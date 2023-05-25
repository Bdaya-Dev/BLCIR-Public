// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_person_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class BdayaBLCIRMStatePersonDtoBuilder {
  void replace(BdayaBLCIRMStatePersonDto other);
  void update(void Function(BdayaBLCIRMStatePersonDtoBuilder) updates);
  String? get id;
  set id(String? id);

  DateTime? get creationTime;
  set creationTime(DateTime? creationTime);

  String? get creatorId;
  set creatorId(String? creatorId);

  DateTime? get lastModificationTime;
  set lastModificationTime(DateTime? lastModificationTime);

  String? get lastModifierId;
  set lastModifierId(String? lastModifierId);

  bool? get isDeleted;
  set isDeleted(bool? isDeleted);

  String? get deleterId;
  set deleterId(String? deleterId);

  DateTime? get deletionTime;
  set deletionTime(DateTime? deletionTime);

  BdayaBLCIRMStatePersonInfoDtoBuilder get info;
  set info(BdayaBLCIRMStatePersonInfoDtoBuilder? info);

  String? get type;
  set type(String? type);
}

class _$$BdayaBLCIRMStatePersonDto extends $BdayaBLCIRMStatePersonDto {
  @override
  final String? id;
  @override
  final DateTime? creationTime;
  @override
  final String? creatorId;
  @override
  final DateTime? lastModificationTime;
  @override
  final String? lastModifierId;
  @override
  final bool? isDeleted;
  @override
  final String? deleterId;
  @override
  final DateTime? deletionTime;
  @override
  final BdayaBLCIRMStatePersonInfoDto? info;
  @override
  final String? type;

  factory _$$BdayaBLCIRMStatePersonDto(
          [void Function($BdayaBLCIRMStatePersonDtoBuilder)? updates]) =>
      (new $BdayaBLCIRMStatePersonDtoBuilder()..update(updates))._build();

  _$$BdayaBLCIRMStatePersonDto._(
      {this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.info,
      this.type})
      : super._();

  @override
  $BdayaBLCIRMStatePersonDto rebuild(
          void Function($BdayaBLCIRMStatePersonDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $BdayaBLCIRMStatePersonDtoBuilder toBuilder() =>
      new $BdayaBLCIRMStatePersonDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $BdayaBLCIRMStatePersonDto &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        isDeleted == other.isDeleted &&
        deleterId == other.deleterId &&
        deletionTime == other.deletionTime &&
        info == other.info &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, lastModificationTime.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jc(_$hash, deleterId.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$BdayaBLCIRMStatePersonDto')
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('isDeleted', isDeleted)
          ..add('deleterId', deleterId)
          ..add('deletionTime', deletionTime)
          ..add('info', info)
          ..add('type', type))
        .toString();
  }
}

class $BdayaBLCIRMStatePersonDtoBuilder
    implements
        Builder<$BdayaBLCIRMStatePersonDto, $BdayaBLCIRMStatePersonDtoBuilder>,
        BdayaBLCIRMStatePersonDtoBuilder {
  _$$BdayaBLCIRMStatePersonDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(covariant DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(covariant String? creatorId) => _$this._creatorId = creatorId;

  DateTime? _lastModificationTime;
  DateTime? get lastModificationTime => _$this._lastModificationTime;
  set lastModificationTime(covariant DateTime? lastModificationTime) =>
      _$this._lastModificationTime = lastModificationTime;

  String? _lastModifierId;
  String? get lastModifierId => _$this._lastModifierId;
  set lastModifierId(covariant String? lastModifierId) =>
      _$this._lastModifierId = lastModifierId;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(covariant bool? isDeleted) => _$this._isDeleted = isDeleted;

  String? _deleterId;
  String? get deleterId => _$this._deleterId;
  set deleterId(covariant String? deleterId) => _$this._deleterId = deleterId;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(covariant DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

  BdayaBLCIRMStatePersonInfoDtoBuilder? _info;
  BdayaBLCIRMStatePersonInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMStatePersonInfoDtoBuilder();
  set info(covariant BdayaBLCIRMStatePersonInfoDtoBuilder? info) =>
      _$this._info = info;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $BdayaBLCIRMStatePersonDtoBuilder() {
    $BdayaBLCIRMStatePersonDto._defaults(this);
  }

  $BdayaBLCIRMStatePersonDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _creationTime = $v.creationTime;
      _creatorId = $v.creatorId;
      _lastModificationTime = $v.lastModificationTime;
      _lastModifierId = $v.lastModifierId;
      _isDeleted = $v.isDeleted;
      _deleterId = $v.deleterId;
      _deletionTime = $v.deletionTime;
      _info = $v.info?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $BdayaBLCIRMStatePersonDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$BdayaBLCIRMStatePersonDto;
  }

  @override
  void update(void Function($BdayaBLCIRMStatePersonDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $BdayaBLCIRMStatePersonDto build() => _build();

  _$$BdayaBLCIRMStatePersonDto _build() {
    _$$BdayaBLCIRMStatePersonDto _$result;
    try {
      _$result = _$v ??
          new _$$BdayaBLCIRMStatePersonDto._(
              id: id,
              creationTime: creationTime,
              creatorId: creatorId,
              lastModificationTime: lastModificationTime,
              lastModifierId: lastModifierId,
              isDeleted: isDeleted,
              deleterId: deleterId,
              deletionTime: deletionTime,
              info: _info?.build(),
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$BdayaBLCIRMStatePersonDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
