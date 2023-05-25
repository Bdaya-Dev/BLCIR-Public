// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_tenants_update_app_tenant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMTenantsUpdateAppTenantDto
    extends BdayaBLCIRMTenantsUpdateAppTenantDto {
  @override
  final BdayaBLCIRMModelsRefNullable1SystemString? name;
  @override
  final BdayaBLCIRMTenantsUpdateAppTenantInfoDto? info;

  factory _$BdayaBLCIRMTenantsUpdateAppTenantDto(
          [void Function(BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMTenantsUpdateAppTenantDto._({this.name, this.info}) : super._();

  @override
  BdayaBLCIRMTenantsUpdateAppTenantDto rebuild(
          void Function(BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder toBuilder() =>
      new BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMTenantsUpdateAppTenantDto &&
        name == other.name &&
        info == other.info;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMTenantsUpdateAppTenantDto')
          ..add('name', name)
          ..add('info', info))
        .toString();
  }
}

class BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder
    implements
        Builder<BdayaBLCIRMTenantsUpdateAppTenantDto,
            BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder> {
  _$BdayaBLCIRMTenantsUpdateAppTenantDto? _$v;

  BdayaBLCIRMModelsRefNullable1SystemStringBuilder? _name;
  BdayaBLCIRMModelsRefNullable1SystemStringBuilder get name =>
      _$this._name ??= new BdayaBLCIRMModelsRefNullable1SystemStringBuilder();
  set name(BdayaBLCIRMModelsRefNullable1SystemStringBuilder? name) =>
      _$this._name = name;

  BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder? _info;
  BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder();
  set info(BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder? info) =>
      _$this._info = info;

  BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder() {
    BdayaBLCIRMTenantsUpdateAppTenantDto._defaults(this);
  }

  BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name?.toBuilder();
      _info = $v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMTenantsUpdateAppTenantDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMTenantsUpdateAppTenantDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMTenantsUpdateAppTenantDto build() => _build();

  _$BdayaBLCIRMTenantsUpdateAppTenantDto _build() {
    _$BdayaBLCIRMTenantsUpdateAppTenantDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMTenantsUpdateAppTenantDto._(
              name: _name?.build(), info: _info?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMTenantsUpdateAppTenantDto',
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
