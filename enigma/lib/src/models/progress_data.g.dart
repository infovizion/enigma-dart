// GENERATED CODE - DO NOT MODIFY BY HAND

part of progress_data;

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

Serializer<ProgressData> _$progressDataSerializer =
    new _$ProgressDataSerializer();

class _$ProgressDataSerializer implements StructuredSerializer<ProgressData> {
  @override
  final Iterable<Type> types = const [ProgressData, _$ProgressData];
  @override
  final String wireName = 'ProgressData';

  @override
  Iterable serialize(Serializers serializers, ProgressData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.started != null) {
      result
        ..add('qStarted')
        ..add(serializers.serialize(object.started,
            specifiedType: const FullType(bool)));
    }
    if (object.finished != null) {
      result
        ..add('qFinished')
        ..add(serializers.serialize(object.finished,
            specifiedType: const FullType(bool)));
    }
    if (object.completed != null) {
      result
        ..add('qCompleted')
        ..add(serializers.serialize(object.completed,
            specifiedType: const FullType(int)));
    }
    if (object.total != null) {
      result
        ..add('qTotal')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    if (object.kB != null) {
      result
        ..add('qKB')
        ..add(serializers.serialize(object.kB,
            specifiedType: const FullType(int)));
    }
    if (object.millisecs != null) {
      result
        ..add('qMillisecs')
        ..add(serializers.serialize(object.millisecs,
            specifiedType: const FullType(int)));
    }
    if (object.userInteractionWanted != null) {
      result
        ..add('qUserInteractionWanted')
        ..add(serializers.serialize(object.userInteractionWanted,
            specifiedType: const FullType(bool)));
    }
    if (object.persistentProgress != null) {
      result
        ..add('qPersistentProgress')
        ..add(serializers.serialize(object.persistentProgress,
            specifiedType: const FullType(String)));
    }
    if (object.transientProgress != null) {
      result
        ..add('qTransientProgress')
        ..add(serializers.serialize(object.transientProgress,
            specifiedType: const FullType(String)));
    }
    if (object.errorData != null) {
      result
        ..add('qErrorData')
        ..add(serializers.serialize(object.errorData,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.persistentProgressMessages != null) {
      result
        ..add('qPersistentProgressMessages')
        ..add(serializers.serialize(object.persistentProgressMessages,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.transientProgressMessage != null) {
      result
        ..add('qTransientProgressMessage')
        ..add(serializers.serialize(object.transientProgressMessage,
            specifiedType: const FullType(ProgressMessage)));
    }

    return result;
  }

  @override
  ProgressData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ProgressDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qStarted':
          result.started = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qFinished':
          result.finished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qCompleted':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTotal':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qKB':
          result.kB = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qMillisecs':
          result.millisecs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qUserInteractionWanted':
          result.userInteractionWanted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qPersistentProgress':
          result.persistentProgress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTransientProgress':
          result.transientProgress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qErrorData':
          result.errorData.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qPersistentProgressMessages':
          result.persistentProgressMessages.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qTransientProgressMessage':
          result.transientProgressMessage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProgressMessage))
              as ProgressMessage);
          break;
      }
    }

    return result.build();
  }
}

class _$ProgressData extends ProgressData {
  @override
  final bool started;
  @override
  final bool finished;
  @override
  final int completed;
  @override
  final int total;
  @override
  final int kB;
  @override
  final int millisecs;
  @override
  final bool userInteractionWanted;
  @override
  final String persistentProgress;
  @override
  final String transientProgress;
  @override
  final BuiltList<NxCell> errorData;
  @override
  final BuiltList<NxCell> persistentProgressMessages;
  @override
  final ProgressMessage transientProgressMessage;

  factory _$ProgressData([void updates(ProgressDataBuilder b)]) =>
      (new ProgressDataBuilder()..update(updates)).build();

  _$ProgressData._(
      {this.started,
      this.finished,
      this.completed,
      this.total,
      this.kB,
      this.millisecs,
      this.userInteractionWanted,
      this.persistentProgress,
      this.transientProgress,
      this.errorData,
      this.persistentProgressMessages,
      this.transientProgressMessage})
      : super._();

  @override
  ProgressData rebuild(void updates(ProgressDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressDataBuilder toBuilder() => new ProgressDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ProgressData) return false;
    return started == other.started &&
        finished == other.finished &&
        completed == other.completed &&
        total == other.total &&
        kB == other.kB &&
        millisecs == other.millisecs &&
        userInteractionWanted == other.userInteractionWanted &&
        persistentProgress == other.persistentProgress &&
        transientProgress == other.transientProgress &&
        errorData == other.errorData &&
        persistentProgressMessages == other.persistentProgressMessages &&
        transientProgressMessage == other.transientProgressMessage;
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
                                            $jc($jc(0, started.hashCode),
                                                finished.hashCode),
                                            completed.hashCode),
                                        total.hashCode),
                                    kB.hashCode),
                                millisecs.hashCode),
                            userInteractionWanted.hashCode),
                        persistentProgress.hashCode),
                    transientProgress.hashCode),
                errorData.hashCode),
            persistentProgressMessages.hashCode),
        transientProgressMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProgressData')
          ..add('started', started)
          ..add('finished', finished)
          ..add('completed', completed)
          ..add('total', total)
          ..add('kB', kB)
          ..add('millisecs', millisecs)
          ..add('userInteractionWanted', userInteractionWanted)
          ..add('persistentProgress', persistentProgress)
          ..add('transientProgress', transientProgress)
          ..add('errorData', errorData)
          ..add('persistentProgressMessages', persistentProgressMessages)
          ..add('transientProgressMessage', transientProgressMessage))
        .toString();
  }
}

class ProgressDataBuilder
    implements Builder<ProgressData, ProgressDataBuilder> {
  _$ProgressData _$v;

  bool _started;
  bool get started => _$this._started;
  set started(bool started) => _$this._started = started;

  bool _finished;
  bool get finished => _$this._finished;
  set finished(bool finished) => _$this._finished = finished;

  int _completed;
  int get completed => _$this._completed;
  set completed(int completed) => _$this._completed = completed;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _kB;
  int get kB => _$this._kB;
  set kB(int kB) => _$this._kB = kB;

  int _millisecs;
  int get millisecs => _$this._millisecs;
  set millisecs(int millisecs) => _$this._millisecs = millisecs;

  bool _userInteractionWanted;
  bool get userInteractionWanted => _$this._userInteractionWanted;
  set userInteractionWanted(bool userInteractionWanted) =>
      _$this._userInteractionWanted = userInteractionWanted;

  String _persistentProgress;
  String get persistentProgress => _$this._persistentProgress;
  set persistentProgress(String persistentProgress) =>
      _$this._persistentProgress = persistentProgress;

  String _transientProgress;
  String get transientProgress => _$this._transientProgress;
  set transientProgress(String transientProgress) =>
      _$this._transientProgress = transientProgress;

  ListBuilder<NxCell> _errorData;
  ListBuilder<NxCell> get errorData =>
      _$this._errorData ??= new ListBuilder<NxCell>();
  set errorData(ListBuilder<NxCell> errorData) => _$this._errorData = errorData;

  ListBuilder<NxCell> _persistentProgressMessages;
  ListBuilder<NxCell> get persistentProgressMessages =>
      _$this._persistentProgressMessages ??= new ListBuilder<NxCell>();
  set persistentProgressMessages(
          ListBuilder<NxCell> persistentProgressMessages) =>
      _$this._persistentProgressMessages = persistentProgressMessages;

  ProgressMessageBuilder _transientProgressMessage;
  ProgressMessageBuilder get transientProgressMessage =>
      _$this._transientProgressMessage ??= new ProgressMessageBuilder();
  set transientProgressMessage(
          ProgressMessageBuilder transientProgressMessage) =>
      _$this._transientProgressMessage = transientProgressMessage;

  ProgressDataBuilder();

  ProgressDataBuilder get _$this {
    if (_$v != null) {
      _started = _$v.started;
      _finished = _$v.finished;
      _completed = _$v.completed;
      _total = _$v.total;
      _kB = _$v.kB;
      _millisecs = _$v.millisecs;
      _userInteractionWanted = _$v.userInteractionWanted;
      _persistentProgress = _$v.persistentProgress;
      _transientProgress = _$v.transientProgress;
      _errorData = _$v.errorData?.toBuilder();
      _persistentProgressMessages = _$v.persistentProgressMessages?.toBuilder();
      _transientProgressMessage = _$v.transientProgressMessage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgressData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ProgressData;
  }

  @override
  void update(void updates(ProgressDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ProgressData build() {
    _$ProgressData _$result;
    try {
      _$result = _$v ??
          new _$ProgressData._(
              started: started,
              finished: finished,
              completed: completed,
              total: total,
              kB: kB,
              millisecs: millisecs,
              userInteractionWanted: userInteractionWanted,
              persistentProgress: persistentProgress,
              transientProgress: transientProgress,
              errorData: _errorData?.build(),
              persistentProgressMessages: _persistentProgressMessages?.build(),
              transientProgressMessage: _transientProgressMessage?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errorData';
        _errorData?.build();
        _$failedField = 'persistentProgressMessages';
        _persistentProgressMessages?.build();
        _$failedField = 'transientProgressMessage';
        _transientProgressMessage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProgressData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
