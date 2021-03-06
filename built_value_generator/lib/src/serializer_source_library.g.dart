// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_value_generator.source_library;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class SerializerSourceLibrary
// **************************************************************************

class _$SerializerSourceLibrary extends SerializerSourceLibrary {
  @override
  final LibraryElement element;
  bool __hasSerializers;
  BuiltSet<SerializerSourceClass> __sourceClasses;
  BuiltSet<SerializerSourceClass> __transitiveSourceClasses;

  factory _$SerializerSourceLibrary(
          [void updates(SerializerSourceLibraryBuilder b)]) =>
      (new SerializerSourceLibraryBuilder()..update(updates)).build();

  _$SerializerSourceLibrary._({this.element}) : super._() {
    if (element == null) throw new ArgumentError.notNull('element');
  }

  @override
  bool get hasSerializers => __hasSerializers ??= super.hasSerializers;

  @override
  BuiltSet<SerializerSourceClass> get sourceClasses =>
      __sourceClasses ??= super.sourceClasses;

  @override
  BuiltSet<SerializerSourceClass> get transitiveSourceClasses =>
      __transitiveSourceClasses ??= super.transitiveSourceClasses;

  @override
  SerializerSourceLibrary rebuild(
          void updates(SerializerSourceLibraryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SerializerSourceLibraryBuilder toBuilder() =>
      new SerializerSourceLibraryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SerializerSourceLibrary) return false;
    return element == other.element;
  }

  @override
  int get hashCode {
    return $jf($jc(0, element.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SerializerSourceLibrary')
          ..add('element', element))
        .toString();
  }
}

class SerializerSourceLibraryBuilder
    implements
        Builder<SerializerSourceLibrary, SerializerSourceLibraryBuilder> {
  _$SerializerSourceLibrary _$v;

  LibraryElement _element;
  LibraryElement get element => _$this._element;
  set element(LibraryElement element) => _$this._element = element;

  SerializerSourceLibraryBuilder();

  SerializerSourceLibraryBuilder get _$this {
    if (_$v != null) {
      _element = _$v.element;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SerializerSourceLibrary other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SerializerSourceLibrary;
  }

  @override
  void update(void updates(SerializerSourceLibraryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SerializerSourceLibrary build() {
    final result = _$v ?? new _$SerializerSourceLibrary._(element: element);
    replace(result);
    return result;
  }
}
