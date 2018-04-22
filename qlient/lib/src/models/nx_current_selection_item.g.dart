// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_current_selection_item;

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

Serializer<NxCurrentSelectionItem> _$nxCurrentSelectionItemSerializer =
    new _$NxCurrentSelectionItemSerializer();

class _$NxCurrentSelectionItemSerializer
    implements StructuredSerializer<NxCurrentSelectionItem> {
  @override
  final Iterable<Type> types = const [
    NxCurrentSelectionItem,
    _$NxCurrentSelectionItem
  ];
  @override
  final String wireName = 'NxCurrentSelectionItem';

  @override
  Iterable serialize(Serializers serializers, NxCurrentSelectionItem object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    if (object.isNum != null) {
      result
        ..add('isNum')
        ..add(serializers.serialize(object.isNum,
            specifiedType: const FullType(bool)));
    }
    if (object.field != null) {
      result
        ..add('field')
        ..add(serializers.serialize(object.field,
            specifiedType: const FullType(String)));
    }
    if (object.locked != null) {
      result
        ..add('locked')
        ..add(serializers.serialize(object.locked,
            specifiedType: const FullType(bool)));
    }
    if (object.oneAndOnlyOne != null) {
      result
        ..add('oneAndOnlyOne')
        ..add(serializers.serialize(object.oneAndOnlyOne,
            specifiedType: const FullType(bool)));
    }
    if (object.textSearch != null) {
      result
        ..add('textSearch')
        ..add(serializers.serialize(object.textSearch,
            specifiedType: const FullType(String)));
    }
    if (object.selectedCount != null) {
      result
        ..add('selectedCount')
        ..add(serializers.serialize(object.selectedCount,
            specifiedType: const FullType(int)));
    }
    if (object.selected != null) {
      result
        ..add('selected')
        ..add(serializers.serialize(object.selected,
            specifiedType: const FullType(String)));
    }
    if (object.rangeInfo != null) {
      result
        ..add('rangeInfo')
        ..add(serializers.serialize(object.rangeInfo,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.sortIndex != null) {
      result
        ..add('sortIndex')
        ..add(serializers.serialize(object.sortIndex,
            specifiedType: const FullType(int)));
    }
    if (object.stateCounts != null) {
      result
        ..add('stateCounts')
        ..add(serializers.serialize(object.stateCounts,
            specifiedType: const FullType(NxStateCounts)));
    }
    if (object.selectedFieldSelectionInfo != null) {
      result
        ..add('selectedFieldSelectionInfo')
        ..add(serializers.serialize(object.selectedFieldSelectionInfo,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.notSelectedFieldSelectionInfo != null) {
      result
        ..add('notSelectedFieldSelectionInfo')
        ..add(serializers.serialize(object.notSelectedFieldSelectionInfo,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.selectionThreshold != null) {
      result
        ..add('selectionThreshold')
        ..add(serializers.serialize(object.selectionThreshold,
            specifiedType: const FullType(int)));
    }
    if (object.readableName != null) {
      result
        ..add('readableName')
        ..add(serializers.serialize(object.readableName,
            specifiedType: const FullType(String)));
    }
    if (object.isHidden != null) {
      result
        ..add('isHidden')
        ..add(serializers.serialize(object.isHidden,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxCurrentSelectionItem deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxCurrentSelectionItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isNum':
          result.isNum = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'field':
          result.field = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'oneAndOnlyOne':
          result.oneAndOnlyOne = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'textSearch':
          result.textSearch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'selectedCount':
          result.selectedCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'selected':
          result.selected = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rangeInfo':
          result.rangeInfo = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'sortIndex':
          result.sortIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stateCounts':
          result.stateCounts.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxStateCounts)) as NxStateCounts);
          break;
        case 'selectedFieldSelectionInfo':
          result.selectedFieldSelectionInfo = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'notSelectedFieldSelectionInfo':
          result.notSelectedFieldSelectionInfo = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'selectionThreshold':
          result.selectionThreshold = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'readableName':
          result.readableName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isHidden':
          result.isHidden = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxCurrentSelectionItem extends NxCurrentSelectionItem {
  @override
  final int total;
  @override
  final bool isNum;
  @override
  final String field;
  @override
  final bool locked;
  @override
  final bool oneAndOnlyOne;
  @override
  final String textSearch;
  @override
  final int selectedCount;
  @override
  final String selected;
  @override
  final List<NxCell> rangeInfo;
  @override
  final int sortIndex;
  @override
  final NxStateCounts stateCounts;
  @override
  final List<NxCell> selectedFieldSelectionInfo;
  @override
  final List<NxCell> notSelectedFieldSelectionInfo;
  @override
  final int selectionThreshold;
  @override
  final String readableName;
  @override
  final bool isHidden;

  factory _$NxCurrentSelectionItem(
          [void updates(NxCurrentSelectionItemBuilder b)]) =>
      (new NxCurrentSelectionItemBuilder()..update(updates)).build();

  _$NxCurrentSelectionItem._(
      {this.total,
      this.isNum,
      this.field,
      this.locked,
      this.oneAndOnlyOne,
      this.textSearch,
      this.selectedCount,
      this.selected,
      this.rangeInfo,
      this.sortIndex,
      this.stateCounts,
      this.selectedFieldSelectionInfo,
      this.notSelectedFieldSelectionInfo,
      this.selectionThreshold,
      this.readableName,
      this.isHidden})
      : super._();

  @override
  NxCurrentSelectionItem rebuild(
          void updates(NxCurrentSelectionItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxCurrentSelectionItemBuilder toBuilder() =>
      new NxCurrentSelectionItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxCurrentSelectionItem) return false;
    return total == other.total &&
        isNum == other.isNum &&
        field == other.field &&
        locked == other.locked &&
        oneAndOnlyOne == other.oneAndOnlyOne &&
        textSearch == other.textSearch &&
        selectedCount == other.selectedCount &&
        selected == other.selected &&
        rangeInfo == other.rangeInfo &&
        sortIndex == other.sortIndex &&
        stateCounts == other.stateCounts &&
        selectedFieldSelectionInfo == other.selectedFieldSelectionInfo &&
        notSelectedFieldSelectionInfo == other.notSelectedFieldSelectionInfo &&
        selectionThreshold == other.selectionThreshold &&
        readableName == other.readableName &&
        isHidden == other.isHidden;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    total
                                                                        .hashCode),
                                                                isNum.hashCode),
                                                            field.hashCode),
                                                        locked.hashCode),
                                                    oneAndOnlyOne.hashCode),
                                                textSearch.hashCode),
                                            selectedCount.hashCode),
                                        selected.hashCode),
                                    rangeInfo.hashCode),
                                sortIndex.hashCode),
                            stateCounts.hashCode),
                        selectedFieldSelectionInfo.hashCode),
                    notSelectedFieldSelectionInfo.hashCode),
                selectionThreshold.hashCode),
            readableName.hashCode),
        isHidden.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxCurrentSelectionItem')
          ..add('total', total)
          ..add('isNum', isNum)
          ..add('field', field)
          ..add('locked', locked)
          ..add('oneAndOnlyOne', oneAndOnlyOne)
          ..add('textSearch', textSearch)
          ..add('selectedCount', selectedCount)
          ..add('selected', selected)
          ..add('rangeInfo', rangeInfo)
          ..add('sortIndex', sortIndex)
          ..add('stateCounts', stateCounts)
          ..add('selectedFieldSelectionInfo', selectedFieldSelectionInfo)
          ..add('notSelectedFieldSelectionInfo', notSelectedFieldSelectionInfo)
          ..add('selectionThreshold', selectionThreshold)
          ..add('readableName', readableName)
          ..add('isHidden', isHidden))
        .toString();
  }
}

class NxCurrentSelectionItemBuilder
    implements Builder<NxCurrentSelectionItem, NxCurrentSelectionItemBuilder> {
  _$NxCurrentSelectionItem _$v;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  bool _isNum;
  bool get isNum => _$this._isNum;
  set isNum(bool isNum) => _$this._isNum = isNum;

  String _field;
  String get field => _$this._field;
  set field(String field) => _$this._field = field;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  bool _oneAndOnlyOne;
  bool get oneAndOnlyOne => _$this._oneAndOnlyOne;
  set oneAndOnlyOne(bool oneAndOnlyOne) =>
      _$this._oneAndOnlyOne = oneAndOnlyOne;

  String _textSearch;
  String get textSearch => _$this._textSearch;
  set textSearch(String textSearch) => _$this._textSearch = textSearch;

  int _selectedCount;
  int get selectedCount => _$this._selectedCount;
  set selectedCount(int selectedCount) => _$this._selectedCount = selectedCount;

  String _selected;
  String get selected => _$this._selected;
  set selected(String selected) => _$this._selected = selected;

  List<NxCell> _rangeInfo;
  List<NxCell> get rangeInfo => _$this._rangeInfo;
  set rangeInfo(List<NxCell> rangeInfo) => _$this._rangeInfo = rangeInfo;

  int _sortIndex;
  int get sortIndex => _$this._sortIndex;
  set sortIndex(int sortIndex) => _$this._sortIndex = sortIndex;

  NxStateCountsBuilder _stateCounts;
  NxStateCountsBuilder get stateCounts =>
      _$this._stateCounts ??= new NxStateCountsBuilder();
  set stateCounts(NxStateCountsBuilder stateCounts) =>
      _$this._stateCounts = stateCounts;

  List<NxCell> _selectedFieldSelectionInfo;
  List<NxCell> get selectedFieldSelectionInfo =>
      _$this._selectedFieldSelectionInfo;
  set selectedFieldSelectionInfo(List<NxCell> selectedFieldSelectionInfo) =>
      _$this._selectedFieldSelectionInfo = selectedFieldSelectionInfo;

  List<NxCell> _notSelectedFieldSelectionInfo;
  List<NxCell> get notSelectedFieldSelectionInfo =>
      _$this._notSelectedFieldSelectionInfo;
  set notSelectedFieldSelectionInfo(
          List<NxCell> notSelectedFieldSelectionInfo) =>
      _$this._notSelectedFieldSelectionInfo = notSelectedFieldSelectionInfo;

  int _selectionThreshold;
  int get selectionThreshold => _$this._selectionThreshold;
  set selectionThreshold(int selectionThreshold) =>
      _$this._selectionThreshold = selectionThreshold;

  String _readableName;
  String get readableName => _$this._readableName;
  set readableName(String readableName) => _$this._readableName = readableName;

  bool _isHidden;
  bool get isHidden => _$this._isHidden;
  set isHidden(bool isHidden) => _$this._isHidden = isHidden;

  NxCurrentSelectionItemBuilder();

  NxCurrentSelectionItemBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _isNum = _$v.isNum;
      _field = _$v.field;
      _locked = _$v.locked;
      _oneAndOnlyOne = _$v.oneAndOnlyOne;
      _textSearch = _$v.textSearch;
      _selectedCount = _$v.selectedCount;
      _selected = _$v.selected;
      _rangeInfo = _$v.rangeInfo;
      _sortIndex = _$v.sortIndex;
      _stateCounts = _$v.stateCounts?.toBuilder();
      _selectedFieldSelectionInfo = _$v.selectedFieldSelectionInfo;
      _notSelectedFieldSelectionInfo = _$v.notSelectedFieldSelectionInfo;
      _selectionThreshold = _$v.selectionThreshold;
      _readableName = _$v.readableName;
      _isHidden = _$v.isHidden;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxCurrentSelectionItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxCurrentSelectionItem;
  }

  @override
  void update(void updates(NxCurrentSelectionItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxCurrentSelectionItem build() {
    _$NxCurrentSelectionItem _$result;
    try {
      _$result = _$v ??
          new _$NxCurrentSelectionItem._(
              total: total,
              isNum: isNum,
              field: field,
              locked: locked,
              oneAndOnlyOne: oneAndOnlyOne,
              textSearch: textSearch,
              selectedCount: selectedCount,
              selected: selected,
              rangeInfo: rangeInfo,
              sortIndex: sortIndex,
              stateCounts: _stateCounts?.build(),
              selectedFieldSelectionInfo: selectedFieldSelectionInfo,
              notSelectedFieldSelectionInfo: notSelectedFieldSelectionInfo,
              selectionThreshold: selectionThreshold,
              readableName: readableName,
              isHidden: isHidden);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'stateCounts';
        _stateCounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxCurrentSelectionItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
