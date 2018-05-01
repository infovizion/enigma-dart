// GENERATED CODE - DO NOT MODIFY BY HAND

part of b_n_f_def;

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

Serializer<BNFDef> _$bNFDefSerializer = new _$BNFDefSerializer();

class _$BNFDefSerializer implements StructuredSerializer<BNFDef> {
  @override
  final Iterable<Type> types = const [BNFDef, _$BNFDef];
  @override
  final String wireName = 'BNFDef';

  @override
  Iterable serialize(Serializers serializers, BNFDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.bnf != null) {
      result
        ..add('qBnf')
        ..add(serializers.serialize(object.bnf,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.nbr != null) {
      result
        ..add('qNbr')
        ..add(serializers.serialize(object.nbr,
            specifiedType: const FullType(int)));
    }
    if (object.pNbr != null) {
      result
        ..add('qPNbr')
        ..add(serializers.serialize(object.pNbr,
            specifiedType: const FullType(int)));
    }
    if (object.helpId != null) {
      result
        ..add('qHelpId')
        ..add(serializers.serialize(object.helpId,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.str != null) {
      result
        ..add('qStr')
        ..add(serializers.serialize(object.str,
            specifiedType: const FullType(String)));
    }
    if (object.isBnfRule != null) {
      result
        ..add('qIsBnfRule')
        ..add(serializers.serialize(object.isBnfRule,
            specifiedType: const FullType(bool)));
    }
    if (object.scriptStatement != null) {
      result
        ..add('qScriptStatement')
        ..add(serializers.serialize(object.scriptStatement,
            specifiedType: const FullType(bool)));
    }
    if (object.controlStatement != null) {
      result
        ..add('qControlStatement')
        ..add(serializers.serialize(object.controlStatement,
            specifiedType: const FullType(bool)));
    }
    if (object.bnfLiteral != null) {
      result
        ..add('qBnfLiteral')
        ..add(serializers.serialize(object.bnfLiteral,
            specifiedType: const FullType(bool)));
    }
    if (object.qvFunc != null) {
      result
        ..add('qQvFunc')
        ..add(serializers.serialize(object.qvFunc,
            specifiedType: const FullType(bool)));
    }
    if (object.aggrFunc != null) {
      result
        ..add('qAggrFunc')
        ..add(serializers.serialize(object.aggrFunc,
            specifiedType: const FullType(bool)));
    }
    if (object.fG != null) {
      result
        ..add('qFG')
        ..add(serializers.serialize(object.fG,
            specifiedType: const FullType(String)));
    }
    if (object.fieldFlag != null) {
      result
        ..add('qFieldFlag')
        ..add(serializers.serialize(object.fieldFlag,
            specifiedType: const FullType(bool)));
    }
    if (object.mT != null) {
      result
        ..add('qMT')
        ..add(serializers.serialize(object.mT,
            specifiedType: const FullType(String)));
    }
    if (object.depr != null) {
      result
        ..add('qDepr')
        ..add(serializers.serialize(object.depr,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  BNFDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new BNFDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qBnf':
          result.bnf.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'qNbr':
          result.nbr = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qPNbr':
          result.pNbr = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qHelpId':
          result.helpId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qStr':
          result.str = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qIsBnfRule':
          result.isBnfRule = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qScriptStatement':
          result.scriptStatement = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qControlStatement':
          result.controlStatement = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qBnfLiteral':
          result.bnfLiteral = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qQvFunc':
          result.qvFunc = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qAggrFunc':
          result.aggrFunc = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qFG':
          result.fG = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qFieldFlag':
          result.fieldFlag = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qMT':
          result.mT = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDepr':
          result.depr = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$BNFDef extends BNFDef {
  @override
  final BuiltList<int> bnf;
  @override
  final int nbr;
  @override
  final int pNbr;
  @override
  final int helpId;
  @override
  final String name;
  @override
  final String str;
  @override
  final bool isBnfRule;
  @override
  final bool scriptStatement;
  @override
  final bool controlStatement;
  @override
  final bool bnfLiteral;
  @override
  final bool qvFunc;
  @override
  final bool aggrFunc;
  @override
  final String fG;
  @override
  final bool fieldFlag;
  @override
  final String mT;
  @override
  final bool depr;

  factory _$BNFDef([void updates(BNFDefBuilder b)]) =>
      (new BNFDefBuilder()..update(updates)).build();

  _$BNFDef._(
      {this.bnf,
      this.nbr,
      this.pNbr,
      this.helpId,
      this.name,
      this.str,
      this.isBnfRule,
      this.scriptStatement,
      this.controlStatement,
      this.bnfLiteral,
      this.qvFunc,
      this.aggrFunc,
      this.fG,
      this.fieldFlag,
      this.mT,
      this.depr})
      : super._();

  @override
  BNFDef rebuild(void updates(BNFDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BNFDefBuilder toBuilder() => new BNFDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! BNFDef) return false;
    return bnf == other.bnf &&
        nbr == other.nbr &&
        pNbr == other.pNbr &&
        helpId == other.helpId &&
        name == other.name &&
        str == other.str &&
        isBnfRule == other.isBnfRule &&
        scriptStatement == other.scriptStatement &&
        controlStatement == other.controlStatement &&
        bnfLiteral == other.bnfLiteral &&
        qvFunc == other.qvFunc &&
        aggrFunc == other.aggrFunc &&
        fG == other.fG &&
        fieldFlag == other.fieldFlag &&
        mT == other.mT &&
        depr == other.depr;
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
                                                                $jc(0,
                                                                    bnf.hashCode),
                                                                nbr.hashCode),
                                                            pNbr.hashCode),
                                                        helpId.hashCode),
                                                    name.hashCode),
                                                str.hashCode),
                                            isBnfRule.hashCode),
                                        scriptStatement.hashCode),
                                    controlStatement.hashCode),
                                bnfLiteral.hashCode),
                            qvFunc.hashCode),
                        aggrFunc.hashCode),
                    fG.hashCode),
                fieldFlag.hashCode),
            mT.hashCode),
        depr.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BNFDef')
          ..add('bnf', bnf)
          ..add('nbr', nbr)
          ..add('pNbr', pNbr)
          ..add('helpId', helpId)
          ..add('name', name)
          ..add('str', str)
          ..add('isBnfRule', isBnfRule)
          ..add('scriptStatement', scriptStatement)
          ..add('controlStatement', controlStatement)
          ..add('bnfLiteral', bnfLiteral)
          ..add('qvFunc', qvFunc)
          ..add('aggrFunc', aggrFunc)
          ..add('fG', fG)
          ..add('fieldFlag', fieldFlag)
          ..add('mT', mT)
          ..add('depr', depr))
        .toString();
  }
}

class BNFDefBuilder implements Builder<BNFDef, BNFDefBuilder> {
  _$BNFDef _$v;

  ListBuilder<int> _bnf;
  ListBuilder<int> get bnf => _$this._bnf ??= new ListBuilder<int>();
  set bnf(ListBuilder<int> bnf) => _$this._bnf = bnf;

  int _nbr;
  int get nbr => _$this._nbr;
  set nbr(int nbr) => _$this._nbr = nbr;

  int _pNbr;
  int get pNbr => _$this._pNbr;
  set pNbr(int pNbr) => _$this._pNbr = pNbr;

  int _helpId;
  int get helpId => _$this._helpId;
  set helpId(int helpId) => _$this._helpId = helpId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _str;
  String get str => _$this._str;
  set str(String str) => _$this._str = str;

  bool _isBnfRule;
  bool get isBnfRule => _$this._isBnfRule;
  set isBnfRule(bool isBnfRule) => _$this._isBnfRule = isBnfRule;

  bool _scriptStatement;
  bool get scriptStatement => _$this._scriptStatement;
  set scriptStatement(bool scriptStatement) =>
      _$this._scriptStatement = scriptStatement;

  bool _controlStatement;
  bool get controlStatement => _$this._controlStatement;
  set controlStatement(bool controlStatement) =>
      _$this._controlStatement = controlStatement;

  bool _bnfLiteral;
  bool get bnfLiteral => _$this._bnfLiteral;
  set bnfLiteral(bool bnfLiteral) => _$this._bnfLiteral = bnfLiteral;

  bool _qvFunc;
  bool get qvFunc => _$this._qvFunc;
  set qvFunc(bool qvFunc) => _$this._qvFunc = qvFunc;

  bool _aggrFunc;
  bool get aggrFunc => _$this._aggrFunc;
  set aggrFunc(bool aggrFunc) => _$this._aggrFunc = aggrFunc;

  String _fG;
  String get fG => _$this._fG;
  set fG(String fG) => _$this._fG = fG;

  bool _fieldFlag;
  bool get fieldFlag => _$this._fieldFlag;
  set fieldFlag(bool fieldFlag) => _$this._fieldFlag = fieldFlag;

  String _mT;
  String get mT => _$this._mT;
  set mT(String mT) => _$this._mT = mT;

  bool _depr;
  bool get depr => _$this._depr;
  set depr(bool depr) => _$this._depr = depr;

  BNFDefBuilder();

  BNFDefBuilder get _$this {
    if (_$v != null) {
      _bnf = _$v.bnf?.toBuilder();
      _nbr = _$v.nbr;
      _pNbr = _$v.pNbr;
      _helpId = _$v.helpId;
      _name = _$v.name;
      _str = _$v.str;
      _isBnfRule = _$v.isBnfRule;
      _scriptStatement = _$v.scriptStatement;
      _controlStatement = _$v.controlStatement;
      _bnfLiteral = _$v.bnfLiteral;
      _qvFunc = _$v.qvFunc;
      _aggrFunc = _$v.aggrFunc;
      _fG = _$v.fG;
      _fieldFlag = _$v.fieldFlag;
      _mT = _$v.mT;
      _depr = _$v.depr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BNFDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$BNFDef;
  }

  @override
  void update(void updates(BNFDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BNFDef build() {
    _$BNFDef _$result;
    try {
      _$result = _$v ??
          new _$BNFDef._(
              bnf: _bnf?.build(),
              nbr: nbr,
              pNbr: pNbr,
              helpId: helpId,
              name: name,
              str: str,
              isBnfRule: isBnfRule,
              scriptStatement: scriptStatement,
              controlStatement: controlStatement,
              bnfLiteral: bnfLiteral,
              qvFunc: qvFunc,
              aggrFunc: aggrFunc,
              fG: fG,
              fieldFlag: fieldFlag,
              mT: mT,
              depr: depr);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'bnf';
        _bnf?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BNFDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
