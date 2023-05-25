// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_tenants_update_app_tenant_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto
    extends BdayaBLCIRMTenantsUpdateAppTenantInfoDto {
  @override
  final BdayaBLCIRMModelsRefNullable1SystemString? address;
  @override
  final BdayaBLCIRMModelsRefNullable1SystemString? phone;
  @override
  final BdayaBLCIRMModelsRefNullable1SystemString? logo;
  @override
  final BdayaBLCIRMModelsRefNullable1SystemString? website;
  @override
  final BdayaBLCIRMModelsRefNullable1SystemString? email;

  factory _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto(
          [void Function(BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto._(
      {this.address, this.phone, this.logo, this.website, this.email})
      : super._();

  @override
  BdayaBLCIRMTenantsUpdateAppTenantInfoDto rebuild(
          void Function(BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMTenantsUpdateAppTenantInfoDto &&
        address == other.address &&
        phone == other.phone &&
        logo == other.logo &&
        website == other.website &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMTenantsUpdateAppTenantInfoDto')
          ..add('address', address)
          ..add('phone', phone)
          ..add('logo', logo)
          ..add('website', website)
          ..add('email', email))
        .toString();
  }
}

class BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMTenantsUpdateAppTenantInfoDto,
            BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder> {
  _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto? _$v;

  BdayaBLCIRMModelsRefNullable1SystemStringBuilder? _address;
  BdayaBLCIRMModelsRefNullable1SystemStringBuilder get address =>
      _$this._address ??=
          new BdayaBLCIRMModelsRefNullable1SystemStringBuilder();
  set address(BdayaBLCIRMModelsRefNullable1SystemStringBuilder? address) =>
      _$this._address = address;

  BdayaBLCIRMModelsRefNullable1SystemStringBuilder? _phone;
  BdayaBLCIRMModelsRefNullable1SystemStringBuilder get phone =>
      _$this._phone ??= new BdayaBLCIRMModelsRefNullable1SystemStringBuilder();
  set phone(BdayaBLCIRMModelsRefNullable1SystemStringBuilder? phone) =>
      _$this._phone = phone;

  BdayaBLCIRMModelsRefNullable1SystemStringBuilder? _logo;
  BdayaBLCIRMModelsRefNullable1SystemStringBuilder get logo =>
      _$this._logo ??= new BdayaBLCIRMModelsRefNullable1SystemStringBuilder();
  set logo(BdayaBLCIRMModelsRefNullable1SystemStringBuilder? logo) =>
      _$this._logo = logo;

  BdayaBLCIRMModelsRefNullable1SystemStringBuilder? _website;
  BdayaBLCIRMModelsRefNullable1SystemStringBuilder get website =>
      _$this._website ??=
          new BdayaBLCIRMModelsRefNullable1SystemStringBuilder();
  set website(BdayaBLCIRMModelsRefNullable1SystemStringBuilder? website) =>
      _$this._website = website;

  BdayaBLCIRMModelsRefNullable1SystemStringBuilder? _email;
  BdayaBLCIRMModelsRefNullable1SystemStringBuilder get email =>
      _$this._email ??= new BdayaBLCIRMModelsRefNullable1SystemStringBuilder();
  set email(BdayaBLCIRMModelsRefNullable1SystemStringBuilder? email) =>
      _$this._email = email;

  BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder() {
    BdayaBLCIRMTenantsUpdateAppTenantInfoDto._defaults(this);
  }

  BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _phone = $v.phone?.toBuilder();
      _logo = $v.logo?.toBuilder();
      _website = $v.website?.toBuilder();
      _email = $v.email?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMTenantsUpdateAppTenantInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMTenantsUpdateAppTenantInfoDto build() => _build();

  _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto _build() {
    _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto._(
              address: _address?.build(),
              phone: _phone?.build(),
              logo: _logo?.build(),
              website: _website?.build(),
              email: _email?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
        _$failedField = 'phone';
        _phone?.build();
        _$failedField = 'logo';
        _logo?.build();
        _$failedField = 'website';
        _website?.build();
        _$failedField = 'email';
        _email?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMTenantsUpdateAppTenantInfoDto',
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
