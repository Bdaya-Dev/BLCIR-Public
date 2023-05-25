// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_management_tenant_dto_extra_properties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantManagementTenantDtoExtraProperties
    extends TenantManagementTenantDtoExtraProperties {
  @override
  final BdayaBLCIRMStateAllowedByInfo? allowedBy;
  @override
  final BdayaBLCIRMStateOrganizationInfo? info;
  @override
  final BdayaBLCIRMStateOrgType? orgType;

  factory _$TenantManagementTenantDtoExtraProperties(
          [void Function(TenantManagementTenantDtoExtraPropertiesBuilder)?
              updates]) =>
      (new TenantManagementTenantDtoExtraPropertiesBuilder()..update(updates))
          ._build();

  _$TenantManagementTenantDtoExtraProperties._(
      {this.allowedBy, this.info, this.orgType})
      : super._();

  @override
  TenantManagementTenantDtoExtraProperties rebuild(
          void Function(TenantManagementTenantDtoExtraPropertiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantManagementTenantDtoExtraPropertiesBuilder toBuilder() =>
      new TenantManagementTenantDtoExtraPropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantManagementTenantDtoExtraProperties &&
        allowedBy == other.allowedBy &&
        info == other.info &&
        orgType == other.orgType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowedBy.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, orgType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TenantManagementTenantDtoExtraProperties')
          ..add('allowedBy', allowedBy)
          ..add('info', info)
          ..add('orgType', orgType))
        .toString();
  }
}

class TenantManagementTenantDtoExtraPropertiesBuilder
    implements
        Builder<TenantManagementTenantDtoExtraProperties,
            TenantManagementTenantDtoExtraPropertiesBuilder> {
  _$TenantManagementTenantDtoExtraProperties? _$v;

  BdayaBLCIRMStateAllowedByInfoBuilder? _allowedBy;
  BdayaBLCIRMStateAllowedByInfoBuilder get allowedBy =>
      _$this._allowedBy ??= new BdayaBLCIRMStateAllowedByInfoBuilder();
  set allowedBy(BdayaBLCIRMStateAllowedByInfoBuilder? allowedBy) =>
      _$this._allowedBy = allowedBy;

  BdayaBLCIRMStateOrganizationInfoBuilder? _info;
  BdayaBLCIRMStateOrganizationInfoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMStateOrganizationInfoBuilder();
  set info(BdayaBLCIRMStateOrganizationInfoBuilder? info) =>
      _$this._info = info;

  BdayaBLCIRMStateOrgType? _orgType;
  BdayaBLCIRMStateOrgType? get orgType => _$this._orgType;
  set orgType(BdayaBLCIRMStateOrgType? orgType) => _$this._orgType = orgType;

  TenantManagementTenantDtoExtraPropertiesBuilder() {
    TenantManagementTenantDtoExtraProperties._defaults(this);
  }

  TenantManagementTenantDtoExtraPropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowedBy = $v.allowedBy?.toBuilder();
      _info = $v.info?.toBuilder();
      _orgType = $v.orgType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantManagementTenantDtoExtraProperties other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TenantManagementTenantDtoExtraProperties;
  }

  @override
  void update(
      void Function(TenantManagementTenantDtoExtraPropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantManagementTenantDtoExtraProperties build() => _build();

  _$TenantManagementTenantDtoExtraProperties _build() {
    _$TenantManagementTenantDtoExtraProperties _$result;
    try {
      _$result = _$v ??
          new _$TenantManagementTenantDtoExtraProperties._(
              allowedBy: _allowedBy?.build(),
              info: _info?.build(),
              orgType: orgType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedBy';
        _allowedBy?.build();
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TenantManagementTenantDtoExtraProperties',
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
