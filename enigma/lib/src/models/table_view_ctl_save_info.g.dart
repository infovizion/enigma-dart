// GENERATED CODE - DO NOT MODIFY BY HAND

part of table_view_ctl_save_info;

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

Serializer<TableViewCtlSaveInfo> _$tableViewCtlSaveInfoSerializer =
    new _$TableViewCtlSaveInfoSerializer();

class _$TableViewCtlSaveInfoSerializer
    implements StructuredSerializer<TableViewCtlSaveInfo> {
  @override
  final Iterable<Type> types = const [
    TableViewCtlSaveInfo,
    _$TableViewCtlSaveInfo
  ];
  @override
  final String wireName = 'TableViewCtlSaveInfo';

  @override
  Iterable serialize(Serializers serializers, TableViewCtlSaveInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.internalView != null) {
      result
        ..add('qInternalView')
        ..add(serializers.serialize(object.internalView,
            specifiedType: const FullType(TableViewSaveInfo)));
    }
    if (object.sourceView != null) {
      result
        ..add('qSourceView')
        ..add(serializers.serialize(object.sourceView,
            specifiedType: const FullType(TableViewSaveInfo)));
    }

    return result;
  }

  @override
  TableViewCtlSaveInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TableViewCtlSaveInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qInternalView':
          result.internalView.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TableViewSaveInfo))
              as TableViewSaveInfo);
          break;
        case 'qSourceView':
          result.sourceView.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TableViewSaveInfo))
              as TableViewSaveInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$TableViewCtlSaveInfo extends TableViewCtlSaveInfo {
  @override
  final TableViewSaveInfo internalView;
  @override
  final TableViewSaveInfo sourceView;

  factory _$TableViewCtlSaveInfo(
          [void updates(TableViewCtlSaveInfoBuilder b)]) =>
      (new TableViewCtlSaveInfoBuilder()..update(updates)).build();

  _$TableViewCtlSaveInfo._({this.internalView, this.sourceView}) : super._();

  @override
  TableViewCtlSaveInfo rebuild(void updates(TableViewCtlSaveInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TableViewCtlSaveInfoBuilder toBuilder() =>
      new TableViewCtlSaveInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TableViewCtlSaveInfo) return false;
    return internalView == other.internalView && sourceView == other.sourceView;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, internalView.hashCode), sourceView.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TableViewCtlSaveInfo')
          ..add('internalView', internalView)
          ..add('sourceView', sourceView))
        .toString();
  }
}

class TableViewCtlSaveInfoBuilder
    implements Builder<TableViewCtlSaveInfo, TableViewCtlSaveInfoBuilder> {
  _$TableViewCtlSaveInfo _$v;

  TableViewSaveInfoBuilder _internalView;
  TableViewSaveInfoBuilder get internalView =>
      _$this._internalView ??= new TableViewSaveInfoBuilder();
  set internalView(TableViewSaveInfoBuilder internalView) =>
      _$this._internalView = internalView;

  TableViewSaveInfoBuilder _sourceView;
  TableViewSaveInfoBuilder get sourceView =>
      _$this._sourceView ??= new TableViewSaveInfoBuilder();
  set sourceView(TableViewSaveInfoBuilder sourceView) =>
      _$this._sourceView = sourceView;

  TableViewCtlSaveInfoBuilder();

  TableViewCtlSaveInfoBuilder get _$this {
    if (_$v != null) {
      _internalView = _$v.internalView?.toBuilder();
      _sourceView = _$v.sourceView?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableViewCtlSaveInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TableViewCtlSaveInfo;
  }

  @override
  void update(void updates(TableViewCtlSaveInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TableViewCtlSaveInfo build() {
    _$TableViewCtlSaveInfo _$result;
    try {
      _$result = _$v ??
          new _$TableViewCtlSaveInfo._(
              internalView: _internalView?.build(),
              sourceView: _sourceView?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'internalView';
        _internalView?.build();
        _$failedField = 'sourceView';
        _sourceView?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TableViewCtlSaveInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
