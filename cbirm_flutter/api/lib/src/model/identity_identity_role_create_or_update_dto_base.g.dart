// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_identity_role_create_or_update_dto_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder {
  void replace(IdentityIdentityRoleCreateOrUpdateDtoBase other);
  void update(
      void Function(IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder) updates);
  MapBuilder<String, JsonObject?> get extraProperties;
  set extraProperties(MapBuilder<String, JsonObject?>? extraProperties);

  String? get name;
  set name(String? name);

  bool? get isDefault;
  set isDefault(bool? isDefault);

  bool? get isPublic;
  set isPublic(bool? isPublic);
}

class _$$IdentityIdentityRoleCreateOrUpdateDtoBase
    extends $IdentityIdentityRoleCreateOrUpdateDtoBase {
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String name;
  @override
  final bool? isDefault;
  @override
  final bool? isPublic;

  factory _$$IdentityIdentityRoleCreateOrUpdateDtoBase(
          [void Function($IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder)?
              updates]) =>
      (new $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder()..update(updates))
          ._build();

  _$$IdentityIdentityRoleCreateOrUpdateDtoBase._(
      {this.extraProperties, required this.name, this.isDefault, this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'$IdentityIdentityRoleCreateOrUpdateDtoBase', 'name');
  }

  @override
  $IdentityIdentityRoleCreateOrUpdateDtoBase rebuild(
          void Function($IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder toBuilder() =>
      new $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $IdentityIdentityRoleCreateOrUpdateDtoBase &&
        extraProperties == other.extraProperties &&
        name == other.name &&
        isDefault == other.isDefault &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'$IdentityIdentityRoleCreateOrUpdateDtoBase')
          ..add('extraProperties', extraProperties)
          ..add('name', name)
          ..add('isDefault', isDefault)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder
    implements
        Builder<$IdentityIdentityRoleCreateOrUpdateDtoBase,
            $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder>,
        IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder {
  _$$IdentityIdentityRoleCreateOrUpdateDtoBase? _$v;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(
          covariant MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(covariant bool? isDefault) => _$this._isDefault = isDefault;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(covariant bool? isPublic) => _$this._isPublic = isPublic;

  $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder() {
    $IdentityIdentityRoleCreateOrUpdateDtoBase._defaults(this);
  }

  $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extraProperties = $v.extraProperties?.toBuilder();
      _name = $v.name;
      _isDefault = $v.isDefault;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $IdentityIdentityRoleCreateOrUpdateDtoBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$IdentityIdentityRoleCreateOrUpdateDtoBase;
  }

  @override
  void update(
      void Function($IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  $IdentityIdentityRoleCreateOrUpdateDtoBase build() => _build();

  _$$IdentityIdentityRoleCreateOrUpdateDtoBase _build() {
    _$$IdentityIdentityRoleCreateOrUpdateDtoBase _$result;
    try {
      _$result = _$v ??
          new _$$IdentityIdentityRoleCreateOrUpdateDtoBase._(
              extraProperties: _extraProperties?.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'$IdentityIdentityRoleCreateOrUpdateDtoBase', 'name'),
              isDefault: isDefault,
              isPublic: isPublic);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$IdentityIdentityRoleCreateOrUpdateDtoBase',
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
