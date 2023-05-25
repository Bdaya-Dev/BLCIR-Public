// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_management_permission_group_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionManagementPermissionGroupDto
    extends PermissionManagementPermissionGroupDto {
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final String? displayNameKey;
  @override
  final String? displayNameResource;
  @override
  final BuiltList<PermissionManagementPermissionGrantInfoDto>? permissions;

  factory _$PermissionManagementPermissionGroupDto(
          [void Function(PermissionManagementPermissionGroupDtoBuilder)?
              updates]) =>
      (new PermissionManagementPermissionGroupDtoBuilder()..update(updates))
          ._build();

  _$PermissionManagementPermissionGroupDto._(
      {this.name,
      this.displayName,
      this.displayNameKey,
      this.displayNameResource,
      this.permissions})
      : super._();

  @override
  PermissionManagementPermissionGroupDto rebuild(
          void Function(PermissionManagementPermissionGroupDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionManagementPermissionGroupDtoBuilder toBuilder() =>
      new PermissionManagementPermissionGroupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionManagementPermissionGroupDto &&
        name == other.name &&
        displayName == other.displayName &&
        displayNameKey == other.displayNameKey &&
        displayNameResource == other.displayNameResource &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, displayNameKey.hashCode);
    _$hash = $jc(_$hash, displayNameResource.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PermissionManagementPermissionGroupDto')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('displayNameKey', displayNameKey)
          ..add('displayNameResource', displayNameResource)
          ..add('permissions', permissions))
        .toString();
  }
}

class PermissionManagementPermissionGroupDtoBuilder
    implements
        Builder<PermissionManagementPermissionGroupDto,
            PermissionManagementPermissionGroupDtoBuilder> {
  _$PermissionManagementPermissionGroupDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _displayNameKey;
  String? get displayNameKey => _$this._displayNameKey;
  set displayNameKey(String? displayNameKey) =>
      _$this._displayNameKey = displayNameKey;

  String? _displayNameResource;
  String? get displayNameResource => _$this._displayNameResource;
  set displayNameResource(String? displayNameResource) =>
      _$this._displayNameResource = displayNameResource;

  ListBuilder<PermissionManagementPermissionGrantInfoDto>? _permissions;
  ListBuilder<PermissionManagementPermissionGrantInfoDto> get permissions =>
      _$this._permissions ??=
          new ListBuilder<PermissionManagementPermissionGrantInfoDto>();
  set permissions(
          ListBuilder<PermissionManagementPermissionGrantInfoDto>?
              permissions) =>
      _$this._permissions = permissions;

  PermissionManagementPermissionGroupDtoBuilder() {
    PermissionManagementPermissionGroupDto._defaults(this);
  }

  PermissionManagementPermissionGroupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayName = $v.displayName;
      _displayNameKey = $v.displayNameKey;
      _displayNameResource = $v.displayNameResource;
      _permissions = $v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionManagementPermissionGroupDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionManagementPermissionGroupDto;
  }

  @override
  void update(
      void Function(PermissionManagementPermissionGroupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionManagementPermissionGroupDto build() => _build();

  _$PermissionManagementPermissionGroupDto _build() {
    _$PermissionManagementPermissionGroupDto _$result;
    try {
      _$result = _$v ??
          new _$PermissionManagementPermissionGroupDto._(
              name: name,
              displayName: displayName,
              displayNameKey: displayNameKey,
              displayNameResource: displayNameResource,
              permissions: _permissions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PermissionManagementPermissionGroupDto',
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
