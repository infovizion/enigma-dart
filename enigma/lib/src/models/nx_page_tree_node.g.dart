// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_page_tree_node;

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

Serializer<NxPageTreeNode> _$nxPageTreeNodeSerializer =
    new _$NxPageTreeNodeSerializer();

class _$NxPageTreeNodeSerializer
    implements StructuredSerializer<NxPageTreeNode> {
  @override
  final Iterable<Type> types = const [NxPageTreeNode, _$NxPageTreeNode];
  @override
  final String wireName = 'NxPageTreeNode';

  @override
  Iterable serialize(Serializers serializers, NxPageTreeNode object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.area != null) {
      result
        ..add('qArea')
        ..add(serializers.serialize(object.area,
            specifiedType: const FullType(Rect)));
    }
    if (object.allValues != null) {
      result
        ..add('qAllValues')
        ..add(serializers.serialize(object.allValues,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxPageTreeNode deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxPageTreeNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qArea':
          result.area.replace(serializers.deserialize(value,
              specifiedType: const FullType(Rect)) as Rect);
          break;
        case 'qAllValues':
          result.allValues = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxPageTreeNode extends NxPageTreeNode {
  @override
  final Rect area;
  @override
  final bool allValues;

  factory _$NxPageTreeNode([void updates(NxPageTreeNodeBuilder b)]) =>
      (new NxPageTreeNodeBuilder()..update(updates)).build();

  _$NxPageTreeNode._({this.area, this.allValues}) : super._();

  @override
  NxPageTreeNode rebuild(void updates(NxPageTreeNodeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxPageTreeNodeBuilder toBuilder() =>
      new NxPageTreeNodeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxPageTreeNode) return false;
    return area == other.area && allValues == other.allValues;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, area.hashCode), allValues.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxPageTreeNode')
          ..add('area', area)
          ..add('allValues', allValues))
        .toString();
  }
}

class NxPageTreeNodeBuilder
    implements Builder<NxPageTreeNode, NxPageTreeNodeBuilder> {
  _$NxPageTreeNode _$v;

  RectBuilder _area;
  RectBuilder get area => _$this._area ??= new RectBuilder();
  set area(RectBuilder area) => _$this._area = area;

  bool _allValues;
  bool get allValues => _$this._allValues;
  set allValues(bool allValues) => _$this._allValues = allValues;

  NxPageTreeNodeBuilder();

  NxPageTreeNodeBuilder get _$this {
    if (_$v != null) {
      _area = _$v.area?.toBuilder();
      _allValues = _$v.allValues;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxPageTreeNode other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxPageTreeNode;
  }

  @override
  void update(void updates(NxPageTreeNodeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxPageTreeNode build() {
    _$NxPageTreeNode _$result;
    try {
      _$result = _$v ??
          new _$NxPageTreeNode._(area: _area?.build(), allValues: allValues);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxPageTreeNode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
