// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_management_tenant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantManagementTenantDto extends TenantManagementTenantDto {
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? concurrencyStamp;

  factory _$TenantManagementTenantDto(
          [void Function(TenantManagementTenantDtoBuilder)? updates]) =>
      (new TenantManagementTenantDtoBuilder()..update(updates))._build();

  _$TenantManagementTenantDto._(
      {this.extraProperties, this.id, this.name, this.concurrencyStamp})
      : super._();

  @override
  TenantManagementTenantDto rebuild(
          void Function(TenantManagementTenantDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantManagementTenantDtoBuilder toBuilder() =>
      new TenantManagementTenantDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantManagementTenantDto &&
        extraProperties == other.extraProperties &&
        id == other.id &&
        name == other.name &&
        concurrencyStamp == other.concurrencyStamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, concurrencyStamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantManagementTenantDto')
          ..add('extraProperties', extraProperties)
          ..add('id', id)
          ..add('name', name)
          ..add('concurrencyStamp', concurrencyStamp))
        .toString();
  }
}

class TenantManagementTenantDtoBuilder
    implements
        Builder<TenantManagementTenantDto, TenantManagementTenantDtoBuilder> {
  _$TenantManagementTenantDto? _$v;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _concurrencyStamp;
  String? get concurrencyStamp => _$this._concurrencyStamp;
  set concurrencyStamp(String? concurrencyStamp) =>
      _$this._concurrencyStamp = concurrencyStamp;

  TenantManagementTenantDtoBuilder() {
    TenantManagementTenantDto._defaults(this);
  }

  TenantManagementTenantDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extraProperties = $v.extraProperties?.toBuilder();
      _id = $v.id;
      _name = $v.name;
      _concurrencyStamp = $v.concurrencyStamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantManagementTenantDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TenantManagementTenantDto;
  }

  @override
  void update(void Function(TenantManagementTenantDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantManagementTenantDto build() => _build();

  _$TenantManagementTenantDto _build() {
    _$TenantManagementTenantDto _$result;
    try {
      _$result = _$v ??
          new _$TenantManagementTenantDto._(
              extraProperties: _extraProperties?.build(),
              id: id,
              name: name,
              concurrencyStamp: concurrencyStamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TenantManagementTenantDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
