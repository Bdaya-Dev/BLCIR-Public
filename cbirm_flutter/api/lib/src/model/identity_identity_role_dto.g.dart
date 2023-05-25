// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_identity_role_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentityIdentityRoleDto extends IdentityIdentityRoleDto {
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final bool? isDefault;
  @override
  final bool? isStatic;
  @override
  final bool? isPublic;
  @override
  final String? concurrencyStamp;

  factory _$IdentityIdentityRoleDto(
          [void Function(IdentityIdentityRoleDtoBuilder)? updates]) =>
      (new IdentityIdentityRoleDtoBuilder()..update(updates))._build();

  _$IdentityIdentityRoleDto._(
      {this.extraProperties,
      this.id,
      this.name,
      this.isDefault,
      this.isStatic,
      this.isPublic,
      this.concurrencyStamp})
      : super._();

  @override
  IdentityIdentityRoleDto rebuild(
          void Function(IdentityIdentityRoleDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityIdentityRoleDtoBuilder toBuilder() =>
      new IdentityIdentityRoleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentityIdentityRoleDto &&
        extraProperties == other.extraProperties &&
        id == other.id &&
        name == other.name &&
        isDefault == other.isDefault &&
        isStatic == other.isStatic &&
        isPublic == other.isPublic &&
        concurrencyStamp == other.concurrencyStamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, isStatic.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, concurrencyStamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdentityIdentityRoleDto')
          ..add('extraProperties', extraProperties)
          ..add('id', id)
          ..add('name', name)
          ..add('isDefault', isDefault)
          ..add('isStatic', isStatic)
          ..add('isPublic', isPublic)
          ..add('concurrencyStamp', concurrencyStamp))
        .toString();
  }
}

class IdentityIdentityRoleDtoBuilder
    implements
        Builder<IdentityIdentityRoleDto, IdentityIdentityRoleDtoBuilder> {
  _$IdentityIdentityRoleDto? _$v;

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

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  bool? _isStatic;
  bool? get isStatic => _$this._isStatic;
  set isStatic(bool? isStatic) => _$this._isStatic = isStatic;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _concurrencyStamp;
  String? get concurrencyStamp => _$this._concurrencyStamp;
  set concurrencyStamp(String? concurrencyStamp) =>
      _$this._concurrencyStamp = concurrencyStamp;

  IdentityIdentityRoleDtoBuilder() {
    IdentityIdentityRoleDto._defaults(this);
  }

  IdentityIdentityRoleDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extraProperties = $v.extraProperties?.toBuilder();
      _id = $v.id;
      _name = $v.name;
      _isDefault = $v.isDefault;
      _isStatic = $v.isStatic;
      _isPublic = $v.isPublic;
      _concurrencyStamp = $v.concurrencyStamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentityIdentityRoleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentityIdentityRoleDto;
  }

  @override
  void update(void Function(IdentityIdentityRoleDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentityIdentityRoleDto build() => _build();

  _$IdentityIdentityRoleDto _build() {
    _$IdentityIdentityRoleDto _$result;
    try {
      _$result = _$v ??
          new _$IdentityIdentityRoleDto._(
              extraProperties: _extraProperties?.build(),
              id: id,
              name: name,
              isDefault: isDefault,
              isStatic: isStatic,
              isPublic: isPublic,
              concurrencyStamp: concurrencyStamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IdentityIdentityRoleDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
