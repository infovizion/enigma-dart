// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_tree_node;

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

Serializer<NxTreeNode> _$nxTreeNodeSerializer = new _$NxTreeNodeSerializer();

class _$NxTreeNodeSerializer implements StructuredSerializer<NxTreeNode> {
  @override
  final Iterable<Type> types = const [NxTreeNode, _$NxTreeNode];
  @override
  final String wireName = 'NxTreeNode';

  @override
  Iterable serialize(Serializers serializers, NxTreeNode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.elemNo != null) {
      result
        ..add('qElemNo')
        ..add(serializers.serialize(object.elemNo,
            specifiedType: const FullType(int)));
    }
    if (object.nodeNr != null) {
      result
        ..add('qNodeNr')
        ..add(serializers.serialize(object.nodeNr,
            specifiedType: const FullType(int)));
    }
    if (object.parentNode != null) {
      result
        ..add('qParentNode')
        ..add(serializers.serialize(object.parentNode,
            specifiedType: const FullType(int)));
    }
    if (object.row != null) {
      result
        ..add('qRow')
        ..add(serializers.serialize(object.row,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.values != null) {
      result
        ..add('qValues')
        ..add(serializers.serialize(object.values,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxTreeValue)])));
    }
    if (object.nodes != null) {
      result
        ..add('qNodes')
        ..add(serializers.serialize(object.nodes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxTreeNode)])));
    }
    if (object.attrExps != null) {
      result
        ..add('qAttrExps')
        ..add(serializers.serialize(object.attrExps,
            specifiedType: const FullType(NxAttributeExpressionValues)));
    }
    if (object.attrDims != null) {
      result
        ..add('qAttrDims')
        ..add(serializers.serialize(object.attrDims,
            specifiedType: const FullType(NxAttributeDimValues)));
    }

    return result;
  }

  @override
  NxTreeNode deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxTreeNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qText':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qElemNo':
          result.elemNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qNodeNr':
          result.nodeNr = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qParentNode':
          result.parentNode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qRow':
          result.row = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qValues':
          result.values.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxTreeValue)]))
              as BuiltList);
          break;
        case 'qNodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(NxTreeNode)])) as BuiltList);
          break;
        case 'qAttrExps':
          result.attrExps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAttributeExpressionValues))
              as NxAttributeExpressionValues);
          break;
        case 'qAttrDims':
          result.attrDims.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAttributeDimValues))
              as NxAttributeDimValues);
          break;
      }
    }

    return result.build();
  }
}

class _$NxTreeNode extends NxTreeNode {
  @override
  final String text;
  @override
  final int elemNo;
  @override
  final int nodeNr;
  @override
  final int parentNode;
  @override
  final int row;
  @override
  final String type;
  @override
  final BuiltList<NxTreeValue> values;
  @override
  final BuiltList<NxTreeNode> nodes;
  @override
  final NxAttributeExpressionValues attrExps;
  @override
  final NxAttributeDimValues attrDims;

  factory _$NxTreeNode([void updates(NxTreeNodeBuilder b)]) =>
      (new NxTreeNodeBuilder()..update(updates)).build();

  _$NxTreeNode._(
      {this.text,
      this.elemNo,
      this.nodeNr,
      this.parentNode,
      this.row,
      this.type,
      this.values,
      this.nodes,
      this.attrExps,
      this.attrDims})
      : super._();

  @override
  NxTreeNode rebuild(void updates(NxTreeNodeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxTreeNodeBuilder toBuilder() => new NxTreeNodeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxTreeNode) return false;
    return text == other.text &&
        elemNo == other.elemNo &&
        nodeNr == other.nodeNr &&
        parentNode == other.parentNode &&
        row == other.row &&
        type == other.type &&
        values == other.values &&
        nodes == other.nodes &&
        attrExps == other.attrExps &&
        attrDims == other.attrDims;
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
                                $jc($jc($jc(0, text.hashCode), elemNo.hashCode),
                                    nodeNr.hashCode),
                                parentNode.hashCode),
                            row.hashCode),
                        type.hashCode),
                    values.hashCode),
                nodes.hashCode),
            attrExps.hashCode),
        attrDims.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxTreeNode')
          ..add('text', text)
          ..add('elemNo', elemNo)
          ..add('nodeNr', nodeNr)
          ..add('parentNode', parentNode)
          ..add('row', row)
          ..add('type', type)
          ..add('values', values)
          ..add('nodes', nodes)
          ..add('attrExps', attrExps)
          ..add('attrDims', attrDims))
        .toString();
  }
}

class NxTreeNodeBuilder implements Builder<NxTreeNode, NxTreeNodeBuilder> {
  _$NxTreeNode _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _elemNo;
  int get elemNo => _$this._elemNo;
  set elemNo(int elemNo) => _$this._elemNo = elemNo;

  int _nodeNr;
  int get nodeNr => _$this._nodeNr;
  set nodeNr(int nodeNr) => _$this._nodeNr = nodeNr;

  int _parentNode;
  int get parentNode => _$this._parentNode;
  set parentNode(int parentNode) => _$this._parentNode = parentNode;

  int _row;
  int get row => _$this._row;
  set row(int row) => _$this._row = row;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ListBuilder<NxTreeValue> _values;
  ListBuilder<NxTreeValue> get values =>
      _$this._values ??= new ListBuilder<NxTreeValue>();
  set values(ListBuilder<NxTreeValue> values) => _$this._values = values;

  ListBuilder<NxTreeNode> _nodes;
  ListBuilder<NxTreeNode> get nodes =>
      _$this._nodes ??= new ListBuilder<NxTreeNode>();
  set nodes(ListBuilder<NxTreeNode> nodes) => _$this._nodes = nodes;

  NxAttributeExpressionValuesBuilder _attrExps;
  NxAttributeExpressionValuesBuilder get attrExps =>
      _$this._attrExps ??= new NxAttributeExpressionValuesBuilder();
  set attrExps(NxAttributeExpressionValuesBuilder attrExps) =>
      _$this._attrExps = attrExps;

  NxAttributeDimValuesBuilder _attrDims;
  NxAttributeDimValuesBuilder get attrDims =>
      _$this._attrDims ??= new NxAttributeDimValuesBuilder();
  set attrDims(NxAttributeDimValuesBuilder attrDims) =>
      _$this._attrDims = attrDims;

  NxTreeNodeBuilder();

  NxTreeNodeBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _elemNo = _$v.elemNo;
      _nodeNr = _$v.nodeNr;
      _parentNode = _$v.parentNode;
      _row = _$v.row;
      _type = _$v.type;
      _values = _$v.values?.toBuilder();
      _nodes = _$v.nodes?.toBuilder();
      _attrExps = _$v.attrExps?.toBuilder();
      _attrDims = _$v.attrDims?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxTreeNode other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxTreeNode;
  }

  @override
  void update(void updates(NxTreeNodeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxTreeNode build() {
    _$NxTreeNode _$result;
    try {
      _$result = _$v ??
          new _$NxTreeNode._(
              text: text,
              elemNo: elemNo,
              nodeNr: nodeNr,
              parentNode: parentNode,
              row: row,
              type: type,
              values: _values?.build(),
              nodes: _nodes?.build(),
              attrExps: _attrExps?.build(),
              attrDims: _attrDims?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
        _$failedField = 'nodes';
        _nodes?.build();
        _$failedField = 'attrExps';
        _attrExps?.build();
        _$failedField = 'attrDims';
        _attrDims?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxTreeNode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
