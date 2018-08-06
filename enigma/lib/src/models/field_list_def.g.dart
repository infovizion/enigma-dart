// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_list_def;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<FieldListDef> _$fieldListDefSerializer =
    new _$FieldListDefSerializer();

class _$FieldListDefSerializer implements StructuredSerializer<FieldListDef> {
  @override
  final Iterable<Type> types = const [FieldListDef, _$FieldListDef];
  @override
  final String wireName = 'FieldListDef';

  @override
  Iterable serialize(Serializers serializers, FieldListDef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.showSystem != null) {
      result
        ..add('qShowSystem')
        ..add(serializers.serialize(object.showSystem,
            specifiedType: const FullType(bool)));
    }
    if (object.showHidden != null) {
      result
        ..add('qShowHidden')
        ..add(serializers.serialize(object.showHidden,
            specifiedType: const FullType(bool)));
    }
    if (object.showSemantic != null) {
      result
        ..add('qShowSemantic')
        ..add(serializers.serialize(object.showSemantic,
            specifiedType: const FullType(bool)));
    }
    if (object.showSrcTables != null) {
      result
        ..add('qShowSrcTables')
        ..add(serializers.serialize(object.showSrcTables,
            specifiedType: const FullType(bool)));
    }
    if (object.showDefinitionOnly != null) {
      result
        ..add('qShowDefinitionOnly')
        ..add(serializers.serialize(object.showDefinitionOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.showDerivedFields != null) {
      result
        ..add('qShowDerivedFields')
        ..add(serializers.serialize(object.showDerivedFields,
            specifiedType: const FullType(bool)));
    }
    if (object.showImplicit != null) {
      result
        ..add('qShowImplicit')
        ..add(serializers.serialize(object.showImplicit,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  FieldListDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FieldListDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qShowSystem':
          result.showSystem = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qShowHidden':
          result.showHidden = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qShowSemantic':
          result.showSemantic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qShowSrcTables':
          result.showSrcTables = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qShowDefinitionOnly':
          result.showDefinitionOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qShowDerivedFields':
          result.showDerivedFields = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qShowImplicit':
          result.showImplicit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$FieldListDef extends FieldListDef {
  @override
  final bool showSystem;
  @override
  final bool showHidden;
  @override
  final bool showSemantic;
  @override
  final bool showSrcTables;
  @override
  final bool showDefinitionOnly;
  @override
  final bool showDerivedFields;
  @override
  final bool showImplicit;

  factory _$FieldListDef([void updates(FieldListDefBuilder b)]) =>
      (new FieldListDefBuilder()..update(updates)).build();

  _$FieldListDef._(
      {this.showSystem,
      this.showHidden,
      this.showSemantic,
      this.showSrcTables,
      this.showDefinitionOnly,
      this.showDerivedFields,
      this.showImplicit})
      : super._();

  @override
  FieldListDef rebuild(void updates(FieldListDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldListDefBuilder toBuilder() => new FieldListDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FieldListDef) return false;
    return showSystem == other.showSystem &&
        showHidden == other.showHidden &&
        showSemantic == other.showSemantic &&
        showSrcTables == other.showSrcTables &&
        showDefinitionOnly == other.showDefinitionOnly &&
        showDerivedFields == other.showDerivedFields &&
        showImplicit == other.showImplicit;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, showSystem.hashCode), showHidden.hashCode),
                        showSemantic.hashCode),
                    showSrcTables.hashCode),
                showDefinitionOnly.hashCode),
            showDerivedFields.hashCode),
        showImplicit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FieldListDef')
          ..add('showSystem', showSystem)
          ..add('showHidden', showHidden)
          ..add('showSemantic', showSemantic)
          ..add('showSrcTables', showSrcTables)
          ..add('showDefinitionOnly', showDefinitionOnly)
          ..add('showDerivedFields', showDerivedFields)
          ..add('showImplicit', showImplicit))
        .toString();
  }
}

class FieldListDefBuilder
    implements Builder<FieldListDef, FieldListDefBuilder> {
  _$FieldListDef _$v;

  bool _showSystem;
  bool get showSystem => _$this._showSystem;
  set showSystem(bool showSystem) => _$this._showSystem = showSystem;

  bool _showHidden;
  bool get showHidden => _$this._showHidden;
  set showHidden(bool showHidden) => _$this._showHidden = showHidden;

  bool _showSemantic;
  bool get showSemantic => _$this._showSemantic;
  set showSemantic(bool showSemantic) => _$this._showSemantic = showSemantic;

  bool _showSrcTables;
  bool get showSrcTables => _$this._showSrcTables;
  set showSrcTables(bool showSrcTables) =>
      _$this._showSrcTables = showSrcTables;

  bool _showDefinitionOnly;
  bool get showDefinitionOnly => _$this._showDefinitionOnly;
  set showDefinitionOnly(bool showDefinitionOnly) =>
      _$this._showDefinitionOnly = showDefinitionOnly;

  bool _showDerivedFields;
  bool get showDerivedFields => _$this._showDerivedFields;
  set showDerivedFields(bool showDerivedFields) =>
      _$this._showDerivedFields = showDerivedFields;

  bool _showImplicit;
  bool get showImplicit => _$this._showImplicit;
  set showImplicit(bool showImplicit) => _$this._showImplicit = showImplicit;

  FieldListDefBuilder();

  FieldListDefBuilder get _$this {
    if (_$v != null) {
      _showSystem = _$v.showSystem;
      _showHidden = _$v.showHidden;
      _showSemantic = _$v.showSemantic;
      _showSrcTables = _$v.showSrcTables;
      _showDefinitionOnly = _$v.showDefinitionOnly;
      _showDerivedFields = _$v.showDerivedFields;
      _showImplicit = _$v.showImplicit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldListDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FieldListDef;
  }

  @override
  void update(void updates(FieldListDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FieldListDef build() {
    final _$result = _$v ??
        new _$FieldListDef._(
            showSystem: showSystem,
            showHidden: showHidden,
            showSemantic: showSemantic,
            showSrcTables: showSrcTables,
            showDefinitionOnly: showDefinitionOnly,
            showDerivedFields: showDerivedFields,
            showImplicit: showImplicit);
    replace(_$result);
    return _$result;
  }
}
