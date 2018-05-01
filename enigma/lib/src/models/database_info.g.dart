// GENERATED CODE - DO NOT MODIFY BY HAND

part of database_info;

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

Serializer<DatabaseInfo> _$databaseInfoSerializer =
    new _$DatabaseInfoSerializer();

class _$DatabaseInfoSerializer implements StructuredSerializer<DatabaseInfo> {
  @override
  final Iterable<Type> types = const [DatabaseInfo, _$DatabaseInfo];
  @override
  final String wireName = 'DatabaseInfo';

  @override
  Iterable serialize(Serializers serializers, DatabaseInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.dBMSName != null) {
      result
        ..add('qDBMSName')
        ..add(serializers.serialize(object.dBMSName,
            specifiedType: const FullType(String)));
    }
    if (object.dBUsage != null) {
      result
        ..add('qDBUsage')
        ..add(serializers.serialize(object.dBUsage,
            specifiedType: const FullType(bool)));
    }
    if (object.ownerUsage != null) {
      result
        ..add('qOwnerUsage')
        ..add(serializers.serialize(object.ownerUsage,
            specifiedType: const FullType(bool)));
    }
    if (object.dBSeparator != null) {
      result
        ..add('qDBSeparator')
        ..add(serializers.serialize(object.dBSeparator,
            specifiedType: const FullType(String)));
    }
    if (object.ownerSeparator != null) {
      result
        ..add('qOwnerSeparator')
        ..add(serializers.serialize(object.ownerSeparator,
            specifiedType: const FullType(String)));
    }
    if (object.dBFirst != null) {
      result
        ..add('qDBFirst')
        ..add(serializers.serialize(object.dBFirst,
            specifiedType: const FullType(bool)));
    }
    if (object.quotePreffix != null) {
      result
        ..add('qQuotePreffix')
        ..add(serializers.serialize(object.quotePreffix,
            specifiedType: const FullType(String)));
    }
    if (object.quoteSuffix != null) {
      result
        ..add('qQuoteSuffix')
        ..add(serializers.serialize(object.quoteSuffix,
            specifiedType: const FullType(String)));
    }
    if (object.specialChars != null) {
      result
        ..add('qSpecialChars')
        ..add(serializers.serialize(object.specialChars,
            specifiedType: const FullType(String)));
    }
    if (object.defaultDatabase != null) {
      result
        ..add('qDefaultDatabase')
        ..add(serializers.serialize(object.defaultDatabase,
            specifiedType: const FullType(String)));
    }
    if (object.keywords != null) {
      result
        ..add('qKeywords')
        ..add(serializers.serialize(object.keywords,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  DatabaseInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DatabaseInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDBMSName':
          result.dBMSName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDBUsage':
          result.dBUsage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qOwnerUsage':
          result.ownerUsage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qDBSeparator':
          result.dBSeparator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qOwnerSeparator':
          result.ownerSeparator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDBFirst':
          result.dBFirst = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qQuotePreffix':
          result.quotePreffix = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qQuoteSuffix':
          result.quoteSuffix = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qSpecialChars':
          result.specialChars = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDefaultDatabase':
          result.defaultDatabase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qKeywords':
          result.keywords.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$DatabaseInfo extends DatabaseInfo {
  @override
  final String dBMSName;
  @override
  final bool dBUsage;
  @override
  final bool ownerUsage;
  @override
  final String dBSeparator;
  @override
  final String ownerSeparator;
  @override
  final bool dBFirst;
  @override
  final String quotePreffix;
  @override
  final String quoteSuffix;
  @override
  final String specialChars;
  @override
  final String defaultDatabase;
  @override
  final BuiltList<String> keywords;

  factory _$DatabaseInfo([void updates(DatabaseInfoBuilder b)]) =>
      (new DatabaseInfoBuilder()..update(updates)).build();

  _$DatabaseInfo._(
      {this.dBMSName,
      this.dBUsage,
      this.ownerUsage,
      this.dBSeparator,
      this.ownerSeparator,
      this.dBFirst,
      this.quotePreffix,
      this.quoteSuffix,
      this.specialChars,
      this.defaultDatabase,
      this.keywords})
      : super._();

  @override
  DatabaseInfo rebuild(void updates(DatabaseInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DatabaseInfoBuilder toBuilder() => new DatabaseInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DatabaseInfo) return false;
    return dBMSName == other.dBMSName &&
        dBUsage == other.dBUsage &&
        ownerUsage == other.ownerUsage &&
        dBSeparator == other.dBSeparator &&
        ownerSeparator == other.ownerSeparator &&
        dBFirst == other.dBFirst &&
        quotePreffix == other.quotePreffix &&
        quoteSuffix == other.quoteSuffix &&
        specialChars == other.specialChars &&
        defaultDatabase == other.defaultDatabase &&
        keywords == other.keywords;
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
                                        $jc($jc(0, dBMSName.hashCode),
                                            dBUsage.hashCode),
                                        ownerUsage.hashCode),
                                    dBSeparator.hashCode),
                                ownerSeparator.hashCode),
                            dBFirst.hashCode),
                        quotePreffix.hashCode),
                    quoteSuffix.hashCode),
                specialChars.hashCode),
            defaultDatabase.hashCode),
        keywords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DatabaseInfo')
          ..add('dBMSName', dBMSName)
          ..add('dBUsage', dBUsage)
          ..add('ownerUsage', ownerUsage)
          ..add('dBSeparator', dBSeparator)
          ..add('ownerSeparator', ownerSeparator)
          ..add('dBFirst', dBFirst)
          ..add('quotePreffix', quotePreffix)
          ..add('quoteSuffix', quoteSuffix)
          ..add('specialChars', specialChars)
          ..add('defaultDatabase', defaultDatabase)
          ..add('keywords', keywords))
        .toString();
  }
}

class DatabaseInfoBuilder
    implements Builder<DatabaseInfo, DatabaseInfoBuilder> {
  _$DatabaseInfo _$v;

  String _dBMSName;
  String get dBMSName => _$this._dBMSName;
  set dBMSName(String dBMSName) => _$this._dBMSName = dBMSName;

  bool _dBUsage;
  bool get dBUsage => _$this._dBUsage;
  set dBUsage(bool dBUsage) => _$this._dBUsage = dBUsage;

  bool _ownerUsage;
  bool get ownerUsage => _$this._ownerUsage;
  set ownerUsage(bool ownerUsage) => _$this._ownerUsage = ownerUsage;

  String _dBSeparator;
  String get dBSeparator => _$this._dBSeparator;
  set dBSeparator(String dBSeparator) => _$this._dBSeparator = dBSeparator;

  String _ownerSeparator;
  String get ownerSeparator => _$this._ownerSeparator;
  set ownerSeparator(String ownerSeparator) =>
      _$this._ownerSeparator = ownerSeparator;

  bool _dBFirst;
  bool get dBFirst => _$this._dBFirst;
  set dBFirst(bool dBFirst) => _$this._dBFirst = dBFirst;

  String _quotePreffix;
  String get quotePreffix => _$this._quotePreffix;
  set quotePreffix(String quotePreffix) => _$this._quotePreffix = quotePreffix;

  String _quoteSuffix;
  String get quoteSuffix => _$this._quoteSuffix;
  set quoteSuffix(String quoteSuffix) => _$this._quoteSuffix = quoteSuffix;

  String _specialChars;
  String get specialChars => _$this._specialChars;
  set specialChars(String specialChars) => _$this._specialChars = specialChars;

  String _defaultDatabase;
  String get defaultDatabase => _$this._defaultDatabase;
  set defaultDatabase(String defaultDatabase) =>
      _$this._defaultDatabase = defaultDatabase;

  ListBuilder<String> _keywords;
  ListBuilder<String> get keywords =>
      _$this._keywords ??= new ListBuilder<String>();
  set keywords(ListBuilder<String> keywords) => _$this._keywords = keywords;

  DatabaseInfoBuilder();

  DatabaseInfoBuilder get _$this {
    if (_$v != null) {
      _dBMSName = _$v.dBMSName;
      _dBUsage = _$v.dBUsage;
      _ownerUsage = _$v.ownerUsage;
      _dBSeparator = _$v.dBSeparator;
      _ownerSeparator = _$v.ownerSeparator;
      _dBFirst = _$v.dBFirst;
      _quotePreffix = _$v.quotePreffix;
      _quoteSuffix = _$v.quoteSuffix;
      _specialChars = _$v.specialChars;
      _defaultDatabase = _$v.defaultDatabase;
      _keywords = _$v.keywords?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatabaseInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DatabaseInfo;
  }

  @override
  void update(void updates(DatabaseInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DatabaseInfo build() {
    _$DatabaseInfo _$result;
    try {
      _$result = _$v ??
          new _$DatabaseInfo._(
              dBMSName: dBMSName,
              dBUsage: dBUsage,
              ownerUsage: ownerUsage,
              dBSeparator: dBSeparator,
              ownerSeparator: ownerSeparator,
              dBFirst: dBFirst,
              quotePreffix: quotePreffix,
              quoteSuffix: quoteSuffix,
              specialChars: specialChars,
              defaultDatabase: defaultDatabase,
              keywords: _keywords?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'keywords';
        _keywords?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DatabaseInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
