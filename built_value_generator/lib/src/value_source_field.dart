// Copyright (c) 2016, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library built_value_generator.source_field;

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'value_source_field.g.dart';

BuiltSet<String> _builtCollectionNames = new BuiltSet<String>([
  'BuiltList',
  'BuiltListMultimap',
  'BuiltMap',
  'BuiltSet',
  'BuiltSetMultimap',
]);

abstract class ValueSourceField
    implements Built<ValueSourceField, ValueSourceFieldBuilder> {
  FieldElement get element;
  @nullable
  FieldElement get builderElement;

  factory ValueSourceField(FieldElement element, FieldElement builderElement) =>
      new _$ValueSourceField._(
          element: element, builderElement: builderElement);
  ValueSourceField._();

  @memoized
  String get name => element.displayName;

  // Go via AST to pull in any import prefix.
  @memoized
  String get type =>
      (element.getter.computeNode() as MethodDeclaration)
          ?.returnType
          ?.toString() ??
      'dynamic';

  @memoized
  bool get isGetter => element.getter != null && !element.getter.isSynthetic;

  @memoized
  bool get isNullable => element.getter.metadata
      .any((metadata) => metadata.constantValue.toStringValue() == 'nullable');

  @memoized
  bool get builderFieldExists => builderElement != null;

  @memoized
  bool get builderFieldIsNormalField =>
      builderFieldExists &&
      builderElement.getter != null &&
      !builderElement.getter.isAbstract &&
      builderElement.getter.isSynthetic;

  @memoized
  String get typeInBuilder => builderFieldExists
      ? builderElement.getter?.returnType?.displayName
      : _toBuilderType(element.getter.returnType);

  @memoized
  bool get isNestedBuilder => builderFieldExists
      ? builderElement.getter?.returnType?.displayName?.contains('Builder') ??
          false
      : _needsNestedBuilder(element.getter.returnType);

  static BuiltList<ValueSourceField> fromClassElements(
      ClassElement classElement, ClassElement builderClassElement) {
    final result = new ListBuilder<ValueSourceField>();

    for (final field in classElement.fields) {
      if (!field.isStatic &&
          field.getter != null &&
          (field.getter.isAbstract || field.getter.isSynthetic)) {
        final builderField = builderClassElement?.getField(field.name);
        result.add(new ValueSourceField(field, builderField));
      }
    }

    return result.build();
  }

  static bool _needsNestedBuilder(DartType type) {
    return _isBuiltValue(type) || _isBuiltCollection(type);
  }

  static bool _isBuiltValue(DartType type) {
    if (type.element is! ClassElement) return false;
    return (type.element as ClassElement)
        .allSupertypes
        .any((interfaceType) => interfaceType.name == 'Built');
  }

  static bool _isBuiltCollection(DartType type) {
    return _builtCollectionNames
        .any((name) => type.displayName.startsWith('$name<'));
  }

  static String _toBuilderType(DartType type) {
    if (_isBuiltCollection(type)) {
      return type.displayName
          .replaceFirst('Built', '')
          .replaceFirst('<', 'Builder<');
    } else if (_isBuiltValue(type)) {
      return type.displayName.contains('<')
          ? type.displayName.replaceFirst('<', 'Builder<')
          : '${type}Builder';
    } else {
      return type.displayName;
    }
  }

  Iterable<String> computeErrors() {
    final result = <String>[];

    if (!isGetter) {
      result.add('Make field $name a getter.');
    }

    if (type == 'dynamic') {
      result.add('Make field $name have non-dynamic type.');
    }

    if (builderFieldExists &&
        type != typeInBuilder &&
        // TODO(davidmorgan): smarter check for builder types.
        type.replaceAll('Built', '') !=
            typeInBuilder.replaceAll('Builder', '')) {
      result.add('Make builder field $name have type: $type');
    }

    if (builderFieldExists && !builderFieldIsNormalField) {
      result.add('Make builder field $name a normal field.');
    }

    return result;
  }
}
