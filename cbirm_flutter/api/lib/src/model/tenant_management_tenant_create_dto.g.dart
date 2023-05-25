// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_management_tenant_create_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantManagementTenantCreateDto
    extends TenantManagementTenantCreateDto {
  @override
  final String adminEmailAddress;
  @override
  final String adminPassword;
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String name;

  factory _$TenantManagementTenantCreateDto(
          [void Function(TenantManagementTenantCreateDtoBuilder)? updates]) =>
      (new TenantManagementTenantCreateDtoBuilder()..update(updates))._build();

  _$TenantManagementTenantCreateDto._(
      {required this.adminEmailAddress,
      required this.adminPassword,
      this.extraProperties,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adminEmailAddress,
        r'TenantManagementTenantCreateDto', 'adminEmailAddress');
    BuiltValueNullFieldError.checkNotNull(
        adminPassword, r'TenantManagementTenantCreateDto', 'adminPassword');
    BuiltValueNullFieldError.checkNotNull(
        name, r'TenantManagementTenantCreateDto', 'name');
  }

  @override
  TenantManagementTenantCreateDto rebuild(
          void Function(TenantManagementTenantCreateDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantManagementTenantCreateDtoBuilder toBuilder() =>
      new TenantManagementTenantCreateDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantManagementTenantCreateDto &&
        adminEmailAddress == other.adminEmailAddress &&
        adminPassword == other.adminPassword &&
        extraProperties == other.extraProperties &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adminEmailAddress.hashCode);
    _$hash = $jc(_$hash, adminPassword.hashCode);
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantManagementTenantCreateDto')
          ..add('adminEmailAddress', adminEmailAddress)
          ..add('adminPassword', adminPassword)
          ..add('extraProperties', extraProperties)
          ..add('name', name))
        .toString();
  }
}

class TenantManagementTenantCreateDtoBuilder
    implements
        Builder<TenantManagementTenantCreateDto,
            TenantManagementTenantCreateDtoBuilder>,
        TenantManagementTenantCreateOrUpdateDtoBaseBuilder {
  _$TenantManagementTenantCreateDto? _$v;

  String? _adminEmailAddress;
  String? get adminEmailAddress => _$this._adminEmailAddress;
  set adminEmailAddress(covariant String? adminEmailAddress) =>
      _$this._adminEmailAddress = adminEmailAddress;

  String? _adminPassword;
  String? get adminPassword => _$this._adminPassword;
  set adminPassword(covariant String? adminPassword) =>
      _$this._adminPassword = adminPassword;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(
          covariant MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  TenantManagementTenantCreateDtoBuilder() {
    TenantManagementTenantCreateDto._defaults(this);
  }

  TenantManagementTenantCreateDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adminEmailAddress = $v.adminEmailAddress;
      _adminPassword = $v.adminPassword;
      _extraProperties = $v.extraProperties?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TenantManagementTenantCreateDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TenantManagementTenantCreateDto;
  }

  @override
  void update(void Function(TenantManagementTenantCreateDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantManagementTenantCreateDto build() => _build();

  _$TenantManagementTenantCreateDto _build() {
    _$TenantManagementTenantCreateDto _$result;
    try {
      _$result = _$v ??
          new _$TenantManagementTenantCreateDto._(
              adminEmailAddress: BuiltValueNullFieldError.checkNotNull(
                  adminEmailAddress,
                  r'TenantManagementTenantCreateDto',
                  'adminEmailAddress'),
              adminPassword: BuiltValueNullFieldError.checkNotNull(
                  adminPassword,
                  r'TenantManagementTenantCreateDto',
                  'adminPassword'),
              extraProperties: _extraProperties?.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'TenantManagementTenantCreateDto', 'name'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TenantManagementTenantCreateDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
