// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_tenants_app_tenant_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMTenantsAppTenantInfoDto
    extends BdayaBLCIRMTenantsAppTenantInfoDto {
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? logo;
  @override
  final String? website;
  @override
  final String? email;
  @override
  final DateTime? creationTime;

  factory _$BdayaBLCIRMTenantsAppTenantInfoDto(
          [void Function(BdayaBLCIRMTenantsAppTenantInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMTenantsAppTenantInfoDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMTenantsAppTenantInfoDto._(
      {this.address,
      this.phone,
      this.logo,
      this.website,
      this.email,
      this.creationTime})
      : super._();

  @override
  BdayaBLCIRMTenantsAppTenantInfoDto rebuild(
          void Function(BdayaBLCIRMTenantsAppTenantInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMTenantsAppTenantInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMTenantsAppTenantInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMTenantsAppTenantInfoDto &&
        address == other.address &&
        phone == other.phone &&
        logo == other.logo &&
        website == other.website &&
        email == other.email &&
        creationTime == other.creationTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMTenantsAppTenantInfoDto')
          ..add('address', address)
          ..add('phone', phone)
          ..add('logo', logo)
          ..add('website', website)
          ..add('email', email)
          ..add('creationTime', creationTime))
        .toString();
  }
}

class BdayaBLCIRMTenantsAppTenantInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMTenantsAppTenantInfoDto,
            BdayaBLCIRMTenantsAppTenantInfoDtoBuilder> {
  _$BdayaBLCIRMTenantsAppTenantInfoDto? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  BdayaBLCIRMTenantsAppTenantInfoDtoBuilder() {
    BdayaBLCIRMTenantsAppTenantInfoDto._defaults(this);
  }

  BdayaBLCIRMTenantsAppTenantInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _phone = $v.phone;
      _logo = $v.logo;
      _website = $v.website;
      _email = $v.email;
      _creationTime = $v.creationTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMTenantsAppTenantInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMTenantsAppTenantInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMTenantsAppTenantInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMTenantsAppTenantInfoDto build() => _build();

  _$BdayaBLCIRMTenantsAppTenantInfoDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMTenantsAppTenantInfoDto._(
            address: address,
            phone: phone,
            logo: logo,
            website: website,
            email: email,
            creationTime: creationTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
