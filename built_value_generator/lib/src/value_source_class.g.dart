// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_value_generator.source_class;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueSourceClass
// **************************************************************************

class _$ValueSourceClass extends ValueSourceClass {
  @override
  final ClassElement element;
  String __name;
  ClassElement __builderElement;
  BuiltList<String> __genericParameters;
  BuiltList<String> __genericBounds;
  String __builtParameters;
  bool __hasBuilder;
  String __builderParameters;
  BuiltList<ValueSourceField> __fields;
  String __partStatement;
  bool __hasPartStatement;
  bool __valueClassIsAbstract;
  BuiltList<String> __valueClassConstructors;
  BuiltList<String> __valueClassFactories;
  bool __builderClassIsAbstract;
  BuiltList<String> __builderClassConstructors;
  BuiltList<String> __builderClassFactories;
  BuiltList<MemoizedGetter> __memoizedGetters;

  factory _$ValueSourceClass([void updates(ValueSourceClassBuilder b)]) =>
      (new ValueSourceClassBuilder()..update(updates)).build();

  _$ValueSourceClass._({this.element}) : super._() {
    if (element == null) throw new ArgumentError.notNull('element');
  }

  @override
  String get name => __name ??= super.name;

  @override
  ClassElement get builderElement => __builderElement ??= super.builderElement;

  @override
  BuiltList<String> get genericParameters =>
      __genericParameters ??= super.genericParameters;

  @override
  BuiltList<String> get genericBounds =>
      __genericBounds ??= super.genericBounds;

  @override
  String get builtParameters => __builtParameters ??= super.builtParameters;

  @override
  bool get hasBuilder => __hasBuilder ??= super.hasBuilder;

  @override
  String get builderParameters =>
      __builderParameters ??= super.builderParameters;

  @override
  BuiltList<ValueSourceField> get fields => __fields ??= super.fields;

  @override
  String get partStatement => __partStatement ??= super.partStatement;

  @override
  bool get hasPartStatement => __hasPartStatement ??= super.hasPartStatement;

  @override
  bool get valueClassIsAbstract =>
      __valueClassIsAbstract ??= super.valueClassIsAbstract;

  @override
  BuiltList<String> get valueClassConstructors =>
      __valueClassConstructors ??= super.valueClassConstructors;

  @override
  BuiltList<String> get valueClassFactories =>
      __valueClassFactories ??= super.valueClassFactories;

  @override
  bool get builderClassIsAbstract =>
      __builderClassIsAbstract ??= super.builderClassIsAbstract;

  @override
  BuiltList<String> get builderClassConstructors =>
      __builderClassConstructors ??= super.builderClassConstructors;

  @override
  BuiltList<String> get builderClassFactories =>
      __builderClassFactories ??= super.builderClassFactories;

  @override
  BuiltList<MemoizedGetter> get memoizedGetters =>
      __memoizedGetters ??= super.memoizedGetters;

  @override
  ValueSourceClass rebuild(void updates(ValueSourceClassBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ValueSourceClassBuilder toBuilder() =>
      new ValueSourceClassBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ValueSourceClass) return false;
    return element == other.element;
  }

  @override
  int get hashCode {
    return $jf($jc(0, element.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValueSourceClass')
          ..add('element', element))
        .toString();
  }
}

class ValueSourceClassBuilder
    implements Builder<ValueSourceClass, ValueSourceClassBuilder> {
  _$ValueSourceClass _$v;

  ClassElement _element;
  ClassElement get element => _$this._element;
  set element(ClassElement element) => _$this._element = element;

  ValueSourceClassBuilder();

  ValueSourceClassBuilder get _$this {
    if (_$v != null) {
      _element = _$v.element;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValueSourceClass other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ValueSourceClass;
  }

  @override
  void update(void updates(ValueSourceClassBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ValueSourceClass build() {
    final result = _$v ?? new _$ValueSourceClass._(element: element);
    replace(result);
    return result;
  }
}
