// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_identity_role_update_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentityIdentityRoleUpdateDto extends IdentityIdentityRoleUpdateDto {
  @override
  final String? concurrencyStamp;
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String name;
  @override
  final bool? isDefault;
  @override
  final bool? isPublic;

  factory _$IdentityIdentityRoleUpdateDto(
          [void Function(IdentityIdentityRoleUpdateDtoBuilder)? updates]) =>
      (new IdentityIdentityRoleUpdateDtoBuilder()..update(updates))._build();

  _$IdentityIdentityRoleUpdateDto._(
      {this.concurrencyStamp,
      this.extraProperties,
      required this.name,
      this.isDefault,
      this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'IdentityIdentityRoleUpdateDto', 'name');
  }

  @override
  IdentityIdentityRoleUpdateDto rebuild(
          void Function(IdentityIdentityRoleUpdateDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityIdentityRoleUpdateDtoBuilder toBuilder() =>
      new IdentityIdentityRoleUpdateDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentityIdentityRoleUpdateDto &&
        concurrencyStamp == other.concurrencyStamp &&
        extraProperties == other.extraProperties &&
        name == other.name &&
        isDefault == other.isDefault &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, concurrencyStamp.hashCode);
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdentityIdentityRoleUpdateDto')
          ..add('concurrencyStamp', concurrencyStamp)
          ..add('extraProperties', extraProperties)
          ..add('name', name)
          ..add('isDefault', isDefault)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class IdentityIdentityRoleUpdateDtoBuilder
    implements
        Builder<IdentityIdentityRoleUpdateDto,
            IdentityIdentityRoleUpdateDtoBuilder>,
        IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder {
  _$IdentityIdentityRoleUpdateDto? _$v;

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

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(covariant bool? isDefault) => _$this._isDefault = isDefault;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(covariant bool? isPublic) => _$this._isPublic = isPublic;

  IdentityIdentityRoleUpdateDtoBuilder() {
    IdentityIdentityRoleUpdateDto._defaults(this);
  }

  IdentityIdentityRoleUpdateDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _concurrencyStamp = $v.concurrencyStamp;
      _extraProperties = $v.extraProperties?.toBuilder();
      _name = $v.name;
      _isDefault = $v.isDefault;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IdentityIdentityRoleUpdateDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentityIdentityRoleUpdateDto;
  }

  @override
  void update(void Function(IdentityIdentityRoleUpdateDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentityIdentityRoleUpdateDto build() => _build();

  _$IdentityIdentityRoleUpdateDto _build() {
    _$IdentityIdentityRoleUpdateDto _$result;
    try {
      _$result = _$v ??
          new _$IdentityIdentityRoleUpdateDto._(
              concurrencyStamp: concurrencyStamp,
              extraProperties: _extraProperties?.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'IdentityIdentityRoleUpdateDto', 'name'),
              isDefault: isDefault,
              isPublic: isPublic);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IdentityIdentityRoleUpdateDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
