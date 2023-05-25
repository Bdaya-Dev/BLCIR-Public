// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_tenants_app_tenant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMTenantsAppTenantDto extends BdayaBLCIRMTenantsAppTenantDto {
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
  final String? name;
  @override
  final BdayaBLCIRMOrgType? type;
  @override
  final BdayaBLCIRMTenantsAppTenantInfoDto? info;
  @override
  final BdayaBLCIRMTenantsAllowedByDto? allowedBy;

  factory _$BdayaBLCIRMTenantsAppTenantDto(
          [void Function(BdayaBLCIRMTenantsAppTenantDtoBuilder)? updates]) =>
      (new BdayaBLCIRMTenantsAppTenantDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMTenantsAppTenantDto._(
      {this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.name,
      this.type,
      this.info,
      this.allowedBy})
      : super._();

  @override
  BdayaBLCIRMTenantsAppTenantDto rebuild(
          void Function(BdayaBLCIRMTenantsAppTenantDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMTenantsAppTenantDtoBuilder toBuilder() =>
      new BdayaBLCIRMTenantsAppTenantDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMTenantsAppTenantDto &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        isDeleted == other.isDeleted &&
        deleterId == other.deleterId &&
        deletionTime == other.deletionTime &&
        name == other.name &&
        type == other.type &&
        info == other.info &&
        allowedBy == other.allowedBy;
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
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, allowedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMTenantsAppTenantDto')
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('isDeleted', isDeleted)
          ..add('deleterId', deleterId)
          ..add('deletionTime', deletionTime)
          ..add('name', name)
          ..add('type', type)
          ..add('info', info)
          ..add('allowedBy', allowedBy))
        .toString();
  }
}

class BdayaBLCIRMTenantsAppTenantDtoBuilder
    implements
        Builder<BdayaBLCIRMTenantsAppTenantDto,
            BdayaBLCIRMTenantsAppTenantDtoBuilder> {
  _$BdayaBLCIRMTenantsAppTenantDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  DateTime? _lastModificationTime;
  DateTime? get lastModificationTime => _$this._lastModificationTime;
  set lastModificationTime(DateTime? lastModificationTime) =>
      _$this._lastModificationTime = lastModificationTime;

  String? _lastModifierId;
  String? get lastModifierId => _$this._lastModifierId;
  set lastModifierId(String? lastModifierId) =>
      _$this._lastModifierId = lastModifierId;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  String? _deleterId;
  String? get deleterId => _$this._deleterId;
  set deleterId(String? deleterId) => _$this._deleterId = deleterId;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BdayaBLCIRMOrgType? _type;
  BdayaBLCIRMOrgType? get type => _$this._type;
  set type(BdayaBLCIRMOrgType? type) => _$this._type = type;

  BdayaBLCIRMTenantsAppTenantInfoDtoBuilder? _info;
  BdayaBLCIRMTenantsAppTenantInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMTenantsAppTenantInfoDtoBuilder();
  set info(BdayaBLCIRMTenantsAppTenantInfoDtoBuilder? info) =>
      _$this._info = info;

  BdayaBLCIRMTenantsAllowedByDtoBuilder? _allowedBy;
  BdayaBLCIRMTenantsAllowedByDtoBuilder get allowedBy =>
      _$this._allowedBy ??= new BdayaBLCIRMTenantsAllowedByDtoBuilder();
  set allowedBy(BdayaBLCIRMTenantsAllowedByDtoBuilder? allowedBy) =>
      _$this._allowedBy = allowedBy;

  BdayaBLCIRMTenantsAppTenantDtoBuilder() {
    BdayaBLCIRMTenantsAppTenantDto._defaults(this);
  }

  BdayaBLCIRMTenantsAppTenantDtoBuilder get _$this {
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
      _name = $v.name;
      _type = $v.type;
      _info = $v.info?.toBuilder();
      _allowedBy = $v.allowedBy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMTenantsAppTenantDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMTenantsAppTenantDto;
  }

  @override
  void update(void Function(BdayaBLCIRMTenantsAppTenantDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMTenantsAppTenantDto build() => _build();

  _$BdayaBLCIRMTenantsAppTenantDto _build() {
    _$BdayaBLCIRMTenantsAppTenantDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMTenantsAppTenantDto._(
              id: id,
              creationTime: creationTime,
              creatorId: creatorId,
              lastModificationTime: lastModificationTime,
              lastModifierId: lastModifierId,
              isDeleted: isDeleted,
              deleterId: deleterId,
              deletionTime: deletionTime,
              name: name,
              type: type,
              info: _info?.build(),
              allowedBy: _allowedBy?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'allowedBy';
        _allowedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMTenantsAppTenantDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
