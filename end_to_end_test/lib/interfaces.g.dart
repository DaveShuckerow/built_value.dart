// GENERATED CODE - DO NOT MODIFY BY HAND

part of interfaces;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library interfaces
// **************************************************************************

const EnumWithInt _$one = const EnumWithInt._('one');
const EnumWithInt _$two = const EnumWithInt._('two');
const EnumWithInt _$three = const EnumWithInt._('three');

EnumWithInt _$valueOf(String name) {
  switch (name) {
    case 'one':
      return _$one;
    case 'two':
      return _$two;
    case 'three':
      return _$three;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EnumWithInt> _$values =
    new BuiltSet<EnumWithInt>(const <EnumWithInt>[
  _$one,
  _$two,
  _$three,
]);

Serializer<ValueWithInt> _$valueWithIntSerializer =
    new _$ValueWithIntSerializer();
Serializer<EnumWithInt> _$enumWithIntSerializer = new _$EnumWithIntSerializer();
Serializer<ValueWithHasInt> _$valueWithHasIntSerializer =
    new _$ValueWithHasIntSerializer();

class _$ValueWithIntSerializer implements StructuredSerializer<ValueWithInt> {
  @override
  final Iterable<Type> types = const [ValueWithInt, _$ValueWithInt];
  @override
  final String wireName = 'ValueWithInt';

  @override
  Iterable serialize(Serializers serializers, ValueWithInt object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'anInt',
      serializers.serialize(object.anInt, specifiedType: const FullType(int)),
      'note',
      serializers.serialize(object.note, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ValueWithInt deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ValueWithIntBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'anInt':
          result.anInt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EnumWithIntSerializer implements PrimitiveSerializer<EnumWithInt> {
  @override
  final Iterable<Type> types = const <Type>[EnumWithInt];
  @override
  final String wireName = 'EnumWithInt';

  @override
  Object serialize(Serializers serializers, EnumWithInt object,
          {FullType specifiedType: FullType.unspecified}) =>
      object.name;

  @override
  EnumWithInt deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      EnumWithInt.valueOf(serialized as String);
}

class _$ValueWithHasIntSerializer
    implements StructuredSerializer<ValueWithHasInt> {
  @override
  final Iterable<Type> types = const [ValueWithHasInt, _$ValueWithHasInt];
  @override
  final String wireName = 'ValueWithHasInt';

  @override
  Iterable serialize(Serializers serializers, ValueWithHasInt object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'hasInt',
      serializers.serialize(object.hasInt,
          specifiedType: const FullType(HasInt)),
    ];

    return result;
  }

  @override
  ValueWithHasInt deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ValueWithHasIntBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'hasInt':
          result.hasInt = serializers.deserialize(value,
              specifiedType: const FullType(HasInt)) as HasInt;
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueWithInt
// **************************************************************************

class _$ValueWithInt extends ValueWithInt {
  @override
  final int anInt;
  @override
  final String note;

  factory _$ValueWithInt([void updates(ValueWithIntBuilder b)]) =>
      (new ValueWithIntBuilder()..update(updates)).build();

  _$ValueWithInt._({this.anInt, this.note}) : super._() {
    if (anInt == null) throw new ArgumentError.notNull('anInt');
    if (note == null) throw new ArgumentError.notNull('note');
  }

  @override
  ValueWithInt rebuild(void updates(ValueWithIntBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ValueWithIntBuilder toBuilder() => new ValueWithIntBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ValueWithInt) return false;
    return anInt == other.anInt && note == other.note;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, anInt.hashCode), note.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValueWithInt')
          ..add('anInt', anInt)
          ..add('note', note))
        .toString();
  }
}

class ValueWithIntBuilder
    implements Builder<ValueWithInt, ValueWithIntBuilder> {
  _$ValueWithInt _$v;

  int _anInt;
  int get anInt => _$this._anInt;
  set anInt(int anInt) => _$this._anInt = anInt;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  ValueWithIntBuilder();

  ValueWithIntBuilder get _$this {
    if (_$v != null) {
      _anInt = _$v.anInt;
      _note = _$v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValueWithInt other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ValueWithInt;
  }

  @override
  void update(void updates(ValueWithIntBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ValueWithInt build() {
    final result = _$v ?? new _$ValueWithInt._(anInt: anInt, note: note);
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueWithHasInt
// **************************************************************************

class _$ValueWithHasInt extends ValueWithHasInt {
  @override
  final HasInt hasInt;

  factory _$ValueWithHasInt([void updates(ValueWithHasIntBuilder b)]) =>
      (new ValueWithHasIntBuilder()..update(updates)).build();

  _$ValueWithHasInt._({this.hasInt}) : super._() {
    if (hasInt == null) throw new ArgumentError.notNull('hasInt');
  }

  @override
  ValueWithHasInt rebuild(void updates(ValueWithHasIntBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ValueWithHasIntBuilder toBuilder() =>
      new ValueWithHasIntBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ValueWithHasInt) return false;
    return hasInt == other.hasInt;
  }

  @override
  int get hashCode {
    return $jf($jc(0, hasInt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValueWithHasInt')
          ..add('hasInt', hasInt))
        .toString();
  }
}

class ValueWithHasIntBuilder
    implements Builder<ValueWithHasInt, ValueWithHasIntBuilder> {
  _$ValueWithHasInt _$v;

  HasInt _hasInt;
  HasInt get hasInt => _$this._hasInt;
  set hasInt(HasInt hasInt) => _$this._hasInt = hasInt;

  ValueWithHasIntBuilder();

  ValueWithHasIntBuilder get _$this {
    if (_$v != null) {
      _hasInt = _$v.hasInt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValueWithHasInt other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ValueWithHasInt;
  }

  @override
  void update(void updates(ValueWithHasIntBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ValueWithHasInt build() {
    final result = _$v ?? new _$ValueWithHasInt._(hasInt: hasInt);
    replace(result);
    return result;
  }
}
