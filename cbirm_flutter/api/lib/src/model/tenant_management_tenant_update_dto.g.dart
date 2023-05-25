// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_management_tenant_update_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantManagementTenantUpdateDto
    extends TenantManagementTenantUpdateDto {
  @override
  final String? concurrencyStamp;
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String name;

  factory _$TenantManagementTenantUpdateDto(
          [void Function(TenantManagementTenantUpdateDtoBuilder)? updates]) =>
      (new TenantManagementTenantUpdateDtoBuilder()..update(updates))._build();

  _$TenantManagementTenantUpdateDto._(
      {this.concurrencyStamp, this.extraProperties, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'TenantManagementTenantUpdateDto', 'name');
  }

  @override
  TenantManagementTenantUpdateDto rebuild(
          void Function(TenantManagementTenantUpdateDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantManagementTenantUpdateDtoBuilder toBuilder() =>
      new TenantManagementTenantUpdateDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantManagementTenantUpdateDto &&
        concurrencyStamp == other.concurrencyStamp &&
        extraProperties == other.extraProperties &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, concurrencyStamp.hashCode);
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantManagementTenantUpdateDto')
          ..add('concurrencyStamp', concurrencyStamp)
          ..add('extraProperties', extraProperties)
          ..add('name', name))
        .toString();
  }
}

class TenantManagementTenantUpdateDtoBuilder
    implements
        Builder<TenantManagementTenantUpdateDto,
            TenantManagementTenantUpdateDtoBuilder>,
        TenantManagementTenantCreateOrUpdateDtoBaseBuilder {
  _$TenantManagementTenantUpdateDto? _$v;

  String? _concurrencyStamp;
  String? get concurrencyStamp => _$this._concurrencyStamp;
  set concurrencyStamp(covariant String? concurrencyStamp) =>
      _$this._concurrencyStamp = concurrencyStamp;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(
          covariant MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  TenantManagementTenantUpdateDtoBuilder() {
    TenantManagementTenantUpdateDto._defaults(this);
  }

  TenantManagementTenantUpdateDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _concurrencyStamp = $v.concurrencyStamp;
      _extraProperties = $v.extraProperties?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TenantManagementTenantUpdateDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TenantManagementTenantUpdateDto;
  }

  @override
  void update(void Function(TenantManagementTenantUpdateDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantManagementTenantUpdateDto build() => _build();

  _$TenantManagementTenantUpdateDto _build() {
    _$TenantManagementTenantUpdateDto _$result;
    try {
      _$result = _$v ??
          new _$TenantManagementTenantUpdateDto._(
              concurrencyStamp: concurrencyStamp,
              extraProperties: _extraProperties?.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'TenantManagementTenantUpdateDto', 'name'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TenantManagementTenantUpdateDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
