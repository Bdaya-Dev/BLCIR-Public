// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_tenants_create_app_tenant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMTenantsCreateAppTenantDto
    extends BdayaBLCIRMTenantsCreateAppTenantDto {
  @override
  final BdayaBLCIRMOrgType? type;
  @override
  final TenantManagementTenantCreateDto? createDto;
  @override
  final BdayaBLCIRMTenantsAppTenantInfoDto? info;

  factory _$BdayaBLCIRMTenantsCreateAppTenantDto(
          [void Function(BdayaBLCIRMTenantsCreateAppTenantDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMTenantsCreateAppTenantDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMTenantsCreateAppTenantDto._(
      {this.type, this.createDto, this.info})
      : super._();

  @override
  BdayaBLCIRMTenantsCreateAppTenantDto rebuild(
          void Function(BdayaBLCIRMTenantsCreateAppTenantDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMTenantsCreateAppTenantDtoBuilder toBuilder() =>
      new BdayaBLCIRMTenantsCreateAppTenantDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMTenantsCreateAppTenantDto &&
        type == other.type &&
        createDto == other.createDto &&
        info == other.info;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, createDto.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMTenantsCreateAppTenantDto')
          ..add('type', type)
          ..add('createDto', createDto)
          ..add('info', info))
        .toString();
  }
}

class BdayaBLCIRMTenantsCreateAppTenantDtoBuilder
    implements
        Builder<BdayaBLCIRMTenantsCreateAppTenantDto,
            BdayaBLCIRMTenantsCreateAppTenantDtoBuilder> {
  _$BdayaBLCIRMTenantsCreateAppTenantDto? _$v;

  BdayaBLCIRMOrgType? _type;
  BdayaBLCIRMOrgType? get type => _$this._type;
  set type(BdayaBLCIRMOrgType? type) => _$this._type = type;

  TenantManagementTenantCreateDtoBuilder? _createDto;
  TenantManagementTenantCreateDtoBuilder get createDto =>
      _$this._createDto ??= new TenantManagementTenantCreateDtoBuilder();
  set createDto(TenantManagementTenantCreateDtoBuilder? createDto) =>
      _$this._createDto = createDto;

  BdayaBLCIRMTenantsAppTenantInfoDtoBuilder? _info;
  BdayaBLCIRMTenantsAppTenantInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMTenantsAppTenantInfoDtoBuilder();
  set info(BdayaBLCIRMTenantsAppTenantInfoDtoBuilder? info) =>
      _$this._info = info;

  BdayaBLCIRMTenantsCreateAppTenantDtoBuilder() {
    BdayaBLCIRMTenantsCreateAppTenantDto._defaults(this);
  }

  BdayaBLCIRMTenantsCreateAppTenantDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _createDto = $v.createDto?.toBuilder();
      _info = $v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMTenantsCreateAppTenantDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMTenantsCreateAppTenantDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMTenantsCreateAppTenantDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMTenantsCreateAppTenantDto build() => _build();

  _$BdayaBLCIRMTenantsCreateAppTenantDto _build() {
    _$BdayaBLCIRMTenantsCreateAppTenantDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMTenantsCreateAppTenantDto._(
              type: type, createDto: _createDto?.build(), info: _info?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createDto';
        _createDto?.build();
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMTenantsCreateAppTenantDto',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
