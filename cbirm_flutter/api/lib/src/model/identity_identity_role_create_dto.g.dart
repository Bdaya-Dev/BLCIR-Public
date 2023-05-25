// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_identity_role_create_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentityIdentityRoleCreateDto extends IdentityIdentityRoleCreateDto {
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String name;
  @override
  final bool? isDefault;
  @override
  final bool? isPublic;

  factory _$IdentityIdentityRoleCreateDto(
          [void Function(IdentityIdentityRoleCreateDtoBuilder)? updates]) =>
      (new IdentityIdentityRoleCreateDtoBuilder()..update(updates))._build();

  _$IdentityIdentityRoleCreateDto._(
      {this.extraProperties, required this.name, this.isDefault, this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'IdentityIdentityRoleCreateDto', 'name');
  }

  @override
  IdentityIdentityRoleCreateDto rebuild(
          void Function(IdentityIdentityRoleCreateDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityIdentityRoleCreateDtoBuilder toBuilder() =>
      new IdentityIdentityRoleCreateDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentityIdentityRoleCreateDto &&
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
    return (newBuiltValueToStringHelper(r'IdentityIdentityRoleCreateDto')
          ..add('extraProperties', extraProperties)
          ..add('name', name)
          ..add('isDefault', isDefault)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class IdentityIdentityRoleCreateDtoBuilder
    implements
        Builder<IdentityIdentityRoleCreateDto,
            IdentityIdentityRoleCreateDtoBuilder>,
        IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder {
  _$IdentityIdentityRoleCreateDto? _$v;

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

  IdentityIdentityRoleCreateDtoBuilder() {
    IdentityIdentityRoleCreateDto._defaults(this);
  }

  IdentityIdentityRoleCreateDtoBuilder get _$this {
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
  void replace(covariant IdentityIdentityRoleCreateDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentityIdentityRoleCreateDto;
  }

  @override
  void update(void Function(IdentityIdentityRoleCreateDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentityIdentityRoleCreateDto build() => _build();

  _$IdentityIdentityRoleCreateDto _build() {
    _$IdentityIdentityRoleCreateDto _$result;
    try {
      _$result = _$v ??
          new _$IdentityIdentityRoleCreateDto._(
              extraProperties: _extraProperties?.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'IdentityIdentityRoleCreateDto', 'name'),
              isDefault: isDefault,
              isPublic: isPublic);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IdentityIdentityRoleCreateDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
