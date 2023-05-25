// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_management_update_permissions_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionManagementUpdatePermissionsDto
    extends PermissionManagementUpdatePermissionsDto {
  @override
  final BuiltList<PermissionManagementUpdatePermissionDto>? permissions;

  factory _$PermissionManagementUpdatePermissionsDto(
          [void Function(PermissionManagementUpdatePermissionsDtoBuilder)?
              updates]) =>
      (new PermissionManagementUpdatePermissionsDtoBuilder()..update(updates))
          ._build();

  _$PermissionManagementUpdatePermissionsDto._({this.permissions}) : super._();

  @override
  PermissionManagementUpdatePermissionsDto rebuild(
          void Function(PermissionManagementUpdatePermissionsDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionManagementUpdatePermissionsDtoBuilder toBuilder() =>
      new PermissionManagementUpdatePermissionsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionManagementUpdatePermissionsDto &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PermissionManagementUpdatePermissionsDto')
          ..add('permissions', permissions))
        .toString();
  }
}

class PermissionManagementUpdatePermissionsDtoBuilder
    implements
        Builder<PermissionManagementUpdatePermissionsDto,
            PermissionManagementUpdatePermissionsDtoBuilder> {
  _$PermissionManagementUpdatePermissionsDto? _$v;

  ListBuilder<PermissionManagementUpdatePermissionDto>? _permissions;
  ListBuilder<PermissionManagementUpdatePermissionDto> get permissions =>
      _$this._permissions ??=
          new ListBuilder<PermissionManagementUpdatePermissionDto>();
  set permissions(
          ListBuilder<PermissionManagementUpdatePermissionDto>? permissions) =>
      _$this._permissions = permissions;

  PermissionManagementUpdatePermissionsDtoBuilder() {
    PermissionManagementUpdatePermissionsDto._defaults(this);
  }

  PermissionManagementUpdatePermissionsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissions = $v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionManagementUpdatePermissionsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionManagementUpdatePermissionsDto;
  }

  @override
  void update(
      void Function(PermissionManagementUpdatePermissionsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionManagementUpdatePermissionsDto build() => _build();

  _$PermissionManagementUpdatePermissionsDto _build() {
    _$PermissionManagementUpdatePermissionsDto _$result;
    try {
      _$result = _$v ??
          new _$PermissionManagementUpdatePermissionsDto._(
              permissions: _permissions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PermissionManagementUpdatePermissionsDto',
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
