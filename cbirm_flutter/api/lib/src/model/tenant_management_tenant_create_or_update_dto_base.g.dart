// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_management_tenant_create_or_update_dto_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class TenantManagementTenantCreateOrUpdateDtoBaseBuilder {
  void replace(TenantManagementTenantCreateOrUpdateDtoBase other);
  void update(
      void Function(TenantManagementTenantCreateOrUpdateDtoBaseBuilder)
          updates);
  MapBuilder<String, JsonObject?> get extraProperties;
  set extraProperties(MapBuilder<String, JsonObject?>? extraProperties);

  String? get name;
  set name(String? name);
}

class _$$TenantManagementTenantCreateOrUpdateDtoBase
    extends $TenantManagementTenantCreateOrUpdateDtoBase {
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String name;

  factory _$$TenantManagementTenantCreateOrUpdateDtoBase(
          [void Function($TenantManagementTenantCreateOrUpdateDtoBaseBuilder)?
              updates]) =>
      (new $TenantManagementTenantCreateOrUpdateDtoBaseBuilder()
            ..update(updates))
          ._build();

  _$$TenantManagementTenantCreateOrUpdateDtoBase._(
      {this.extraProperties, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'$TenantManagementTenantCreateOrUpdateDtoBase', 'name');
  }

  @override
  $TenantManagementTenantCreateOrUpdateDtoBase rebuild(
          void Function($TenantManagementTenantCreateOrUpdateDtoBaseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TenantManagementTenantCreateOrUpdateDtoBaseBuilder toBuilder() =>
      new $TenantManagementTenantCreateOrUpdateDtoBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TenantManagementTenantCreateOrUpdateDtoBase &&
        extraProperties == other.extraProperties &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'$TenantManagementTenantCreateOrUpdateDtoBase')
          ..add('extraProperties', extraProperties)
          ..add('name', name))
        .toString();
  }
}

class $TenantManagementTenantCreateOrUpdateDtoBaseBuilder
    implements
        Builder<$TenantManagementTenantCreateOrUpdateDtoBase,
            $TenantManagementTenantCreateOrUpdateDtoBaseBuilder>,
        TenantManagementTenantCreateOrUpdateDtoBaseBuilder {
  _$$TenantManagementTenantCreateOrUpdateDtoBase? _$v;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(
          covariant MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  $TenantManagementTenantCreateOrUpdateDtoBaseBuilder() {
    $TenantManagementTenantCreateOrUpdateDtoBase._defaults(this);
  }

  $TenantManagementTenantCreateOrUpdateDtoBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extraProperties = $v.extraProperties?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TenantManagementTenantCreateOrUpdateDtoBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$TenantManagementTenantCreateOrUpdateDtoBase;
  }

  @override
  void update(
      void Function($TenantManagementTenantCreateOrUpdateDtoBaseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  $TenantManagementTenantCreateOrUpdateDtoBase build() => _build();

  _$$TenantManagementTenantCreateOrUpdateDtoBase _build() {
    _$$TenantManagementTenantCreateOrUpdateDtoBase _$result;
    try {
      _$result = _$v ??
          new _$$TenantManagementTenantCreateOrUpdateDtoBase._(
              extraProperties: _extraProperties?.build(),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'$TenantManagementTenantCreateOrUpdateDtoBase', 'name'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$TenantManagementTenantCreateOrUpdateDtoBase',
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
