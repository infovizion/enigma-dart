// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_tree_data_option;

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

Serializer<NxTreeDataOption> _$nxTreeDataOptionSerializer =
    new _$NxTreeDataOptionSerializer();

class _$NxTreeDataOptionSerializer
    implements StructuredSerializer<NxTreeDataOption> {
  @override
  final Iterable<Type> types = const [NxTreeDataOption, _$NxTreeDataOption];
  @override
  final String wireName = 'NxTreeDataOption';

  @override
  Iterable serialize(Serializers serializers, NxTreeDataOption object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.maxNbrOfNodes != null) {
      result
        ..add('qMaxNbrOfNodes')
        ..add(serializers.serialize(object.maxNbrOfNodes,
            specifiedType: const FullType(int)));
    }
    if (object.treeNodes != null) {
      result
        ..add('qTreeNodes')
        ..add(serializers.serialize(object.treeNodes,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxPageTreeNode)])));
    }
    if (object.treeLevels != null) {
      result
        ..add('qTreeLevels')
        ..add(serializers.serialize(object.treeLevels,
            specifiedType: const FullType(NxPageTreeLevel)));
    }

    return result;
  }

  @override
  NxTreeDataOption deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxTreeDataOptionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qMaxNbrOfNodes':
          result.maxNbrOfNodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTreeNodes':
          result.treeNodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxPageTreeNode)]))
              as BuiltList);
          break;
        case 'qTreeLevels':
          result.treeLevels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxPageTreeLevel))
              as NxPageTreeLevel);
          break;
      }
    }

    return result.build();
  }
}

class _$NxTreeDataOption extends NxTreeDataOption {
  @override
  final int maxNbrOfNodes;
  @override
  final BuiltList<NxPageTreeNode> treeNodes;
  @override
  final NxPageTreeLevel treeLevels;

  factory _$NxTreeDataOption([void updates(NxTreeDataOptionBuilder b)]) =>
      (new NxTreeDataOptionBuilder()..update(updates)).build();

  _$NxTreeDataOption._({this.maxNbrOfNodes, this.treeNodes, this.treeLevels})
      : super._();

  @override
  NxTreeDataOption rebuild(void updates(NxTreeDataOptionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxTreeDataOptionBuilder toBuilder() =>
      new NxTreeDataOptionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxTreeDataOption) return false;
    return maxNbrOfNodes == other.maxNbrOfNodes &&
        treeNodes == other.treeNodes &&
        treeLevels == other.treeLevels;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, maxNbrOfNodes.hashCode), treeNodes.hashCode),
        treeLevels.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxTreeDataOption')
          ..add('maxNbrOfNodes', maxNbrOfNodes)
          ..add('treeNodes', treeNodes)
          ..add('treeLevels', treeLevels))
        .toString();
  }
}

class NxTreeDataOptionBuilder
    implements Builder<NxTreeDataOption, NxTreeDataOptionBuilder> {
  _$NxTreeDataOption _$v;

  int _maxNbrOfNodes;
  int get maxNbrOfNodes => _$this._maxNbrOfNodes;
  set maxNbrOfNodes(int maxNbrOfNodes) => _$this._maxNbrOfNodes = maxNbrOfNodes;

  ListBuilder<NxPageTreeNode> _treeNodes;
  ListBuilder<NxPageTreeNode> get treeNodes =>
      _$this._treeNodes ??= new ListBuilder<NxPageTreeNode>();
  set treeNodes(ListBuilder<NxPageTreeNode> treeNodes) =>
      _$this._treeNodes = treeNodes;

  NxPageTreeLevelBuilder _treeLevels;
  NxPageTreeLevelBuilder get treeLevels =>
      _$this._treeLevels ??= new NxPageTreeLevelBuilder();
  set treeLevels(NxPageTreeLevelBuilder treeLevels) =>
      _$this._treeLevels = treeLevels;

  NxTreeDataOptionBuilder();

  NxTreeDataOptionBuilder get _$this {
    if (_$v != null) {
      _maxNbrOfNodes = _$v.maxNbrOfNodes;
      _treeNodes = _$v.treeNodes?.toBuilder();
      _treeLevels = _$v.treeLevels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxTreeDataOption other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxTreeDataOption;
  }

  @override
  void update(void updates(NxTreeDataOptionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxTreeDataOption build() {
    _$NxTreeDataOption _$result;
    try {
      _$result = _$v ??
          new _$NxTreeDataOption._(
              maxNbrOfNodes: maxNbrOfNodes,
              treeNodes: _treeNodes?.build(),
              treeLevels: _treeLevels?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'treeNodes';
        _treeNodes?.build();
        _$failedField = 'treeLevels';
        _treeLevels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxTreeDataOption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
