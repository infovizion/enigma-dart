// GENERATED CODE - DO NOT MODIFY BY HAND

part of list_object_def;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<ListObjectDef> _$listObjectDefSerializer =
    new _$ListObjectDefSerializer();

class _$ListObjectDefSerializer implements StructuredSerializer<ListObjectDef> {
  @override
  final Iterable<Type> types = const [ListObjectDef, _$ListObjectDef];
  @override
  final String wireName = 'ListObjectDef';

  @override
  Iterable serialize(Serializers serializers, ListObjectDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('stateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }
    if (object.libraryId != null) {
      result
        ..add('libraryId')
        ..add(serializers.serialize(object.libraryId,
            specifiedType: const FullType(String)));
    }
    if (object.def != null) {
      result
        ..add('def')
        ..add(serializers.serialize(object.def,
            specifiedType: const FullType(NxInlineDimensionDef)));
    }
    if (object.autoSortByState != null) {
      result
        ..add('autoSortByState')
        ..add(serializers.serialize(object.autoSortByState,
            specifiedType: const FullType(NxAutoSortByStateDef)));
    }
    if (object.frequencyMode != null) {
      result
        ..add('frequencyMode')
        ..add(serializers.serialize(object.frequencyMode,
            specifiedType: const FullType(String)));
    }
    if (object.showAlternatives != null) {
      result
        ..add('showAlternatives')
        ..add(serializers.serialize(object.showAlternatives,
            specifiedType: const FullType(bool)));
    }
    if (object.initialDataFetch != null) {
      result
        ..add('initialDataFetch')
        ..add(serializers.serialize(object.initialDataFetch,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.expressions != null) {
      result
        ..add('expressions')
        ..add(serializers.serialize(object.expressions,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  ListObjectDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ListObjectDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'stateName':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'libraryId':
          result.libraryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'def':
          result.def.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxInlineDimensionDef))
              as NxInlineDimensionDef);
          break;
        case 'autoSortByState':
          result.autoSortByState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAutoSortByStateDef))
              as NxAutoSortByStateDef);
          break;
        case 'frequencyMode':
          result.frequencyMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'showAlternatives':
          result.showAlternatives = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'initialDataFetch':
          result.initialDataFetch = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'expressions':
          result.expressions = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$ListObjectDef extends ListObjectDef {
  @override
  final String stateName;
  @override
  final String libraryId;
  @override
  final NxInlineDimensionDef def;
  @override
  final NxAutoSortByStateDef autoSortByState;
  @override
  final String frequencyMode;
  @override
  final bool showAlternatives;
  @override
  final List<NxCell> initialDataFetch;
  @override
  final List<NxCell> expressions;

  factory _$ListObjectDef([void updates(ListObjectDefBuilder b)]) =>
      (new ListObjectDefBuilder()..update(updates)).build();

  _$ListObjectDef._(
      {this.stateName,
      this.libraryId,
      this.def,
      this.autoSortByState,
      this.frequencyMode,
      this.showAlternatives,
      this.initialDataFetch,
      this.expressions})
      : super._();

  @override
  ListObjectDef rebuild(void updates(ListObjectDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectDefBuilder toBuilder() => new ListObjectDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ListObjectDef) return false;
    return stateName == other.stateName &&
        libraryId == other.libraryId &&
        def == other.def &&
        autoSortByState == other.autoSortByState &&
        frequencyMode == other.frequencyMode &&
        showAlternatives == other.showAlternatives &&
        initialDataFetch == other.initialDataFetch &&
        expressions == other.expressions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, stateName.hashCode), libraryId.hashCode),
                            def.hashCode),
                        autoSortByState.hashCode),
                    frequencyMode.hashCode),
                showAlternatives.hashCode),
            initialDataFetch.hashCode),
        expressions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListObjectDef')
          ..add('stateName', stateName)
          ..add('libraryId', libraryId)
          ..add('def', def)
          ..add('autoSortByState', autoSortByState)
          ..add('frequencyMode', frequencyMode)
          ..add('showAlternatives', showAlternatives)
          ..add('initialDataFetch', initialDataFetch)
          ..add('expressions', expressions))
        .toString();
  }
}

class ListObjectDefBuilder
    implements Builder<ListObjectDef, ListObjectDefBuilder> {
  _$ListObjectDef _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  String _libraryId;
  String get libraryId => _$this._libraryId;
  set libraryId(String libraryId) => _$this._libraryId = libraryId;

  NxInlineDimensionDefBuilder _def;
  NxInlineDimensionDefBuilder get def =>
      _$this._def ??= new NxInlineDimensionDefBuilder();
  set def(NxInlineDimensionDefBuilder def) => _$this._def = def;

  NxAutoSortByStateDefBuilder _autoSortByState;
  NxAutoSortByStateDefBuilder get autoSortByState =>
      _$this._autoSortByState ??= new NxAutoSortByStateDefBuilder();
  set autoSortByState(NxAutoSortByStateDefBuilder autoSortByState) =>
      _$this._autoSortByState = autoSortByState;

  String _frequencyMode;
  String get frequencyMode => _$this._frequencyMode;
  set frequencyMode(String frequencyMode) =>
      _$this._frequencyMode = frequencyMode;

  bool _showAlternatives;
  bool get showAlternatives => _$this._showAlternatives;
  set showAlternatives(bool showAlternatives) =>
      _$this._showAlternatives = showAlternatives;

  List<NxCell> _initialDataFetch;
  List<NxCell> get initialDataFetch => _$this._initialDataFetch;
  set initialDataFetch(List<NxCell> initialDataFetch) =>
      _$this._initialDataFetch = initialDataFetch;

  List<NxCell> _expressions;
  List<NxCell> get expressions => _$this._expressions;
  set expressions(List<NxCell> expressions) =>
      _$this._expressions = expressions;

  ListObjectDefBuilder();

  ListObjectDefBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _libraryId = _$v.libraryId;
      _def = _$v.def?.toBuilder();
      _autoSortByState = _$v.autoSortByState?.toBuilder();
      _frequencyMode = _$v.frequencyMode;
      _showAlternatives = _$v.showAlternatives;
      _initialDataFetch = _$v.initialDataFetch;
      _expressions = _$v.expressions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ListObjectDef;
  }

  @override
  void update(void updates(ListObjectDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ListObjectDef build() {
    _$ListObjectDef _$result;
    try {
      _$result = _$v ??
          new _$ListObjectDef._(
              stateName: stateName,
              libraryId: libraryId,
              def: _def?.build(),
              autoSortByState: _autoSortByState?.build(),
              frequencyMode: frequencyMode,
              showAlternatives: showAlternatives,
              initialDataFetch: initialDataFetch,
              expressions: expressions);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'def';
        _def?.build();
        _$failedField = 'autoSortByState';
        _autoSortByState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListObjectDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
