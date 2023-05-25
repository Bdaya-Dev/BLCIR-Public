// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_identity_user_update_roles_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentityIdentityUserUpdateRolesDto
    extends IdentityIdentityUserUpdateRolesDto {
  @override
  final BuiltList<String> roleNames;

  factory _$IdentityIdentityUserUpdateRolesDto(
          [void Function(IdentityIdentityUserUpdateRolesDtoBuilder)?
              updates]) =>
      (new IdentityIdentityUserUpdateRolesDtoBuilder()..update(updates))
          ._build();

  _$IdentityIdentityUserUpdateRolesDto._({required this.roleNames})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleNames, r'IdentityIdentityUserUpdateRolesDto', 'roleNames');
  }

  @override
  IdentityIdentityUserUpdateRolesDto rebuild(
          void Function(IdentityIdentityUserUpdateRolesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityIdentityUserUpdateRolesDtoBuilder toBuilder() =>
      new IdentityIdentityUserUpdateRolesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentityIdentityUserUpdateRolesDto &&
        roleNames == other.roleNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdentityIdentityUserUpdateRolesDto')
          ..add('roleNames', roleNames))
        .toString();
  }
}

class IdentityIdentityUserUpdateRolesDtoBuilder
    implements
        Builder<IdentityIdentityUserUpdateRolesDto,
            IdentityIdentityUserUpdateRolesDtoBuilder> {
  _$IdentityIdentityUserUpdateRolesDto? _$v;

  ListBuilder<String>? _roleNames;
  ListBuilder<String> get roleNames =>
      _$this._roleNames ??= new ListBuilder<String>();
  set roleNames(ListBuilder<String>? roleNames) =>
      _$this._roleNames = roleNames;

  IdentityIdentityUserUpdateRolesDtoBuilder() {
    IdentityIdentityUserUpdateRolesDto._defaults(this);
  }

  IdentityIdentityUserUpdateRolesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleNames = $v.roleNames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentityIdentityUserUpdateRolesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentityIdentityUserUpdateRolesDto;
  }

  @override
  void update(
      void Function(IdentityIdentityUserUpdateRolesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentityIdentityUserUpdateRolesDto build() => _build();

  _$IdentityIdentityUserUpdateRolesDto _build() {
    _$IdentityIdentityUserUpdateRolesDto _$result;
    try {
      _$result = _$v ??
          new _$IdentityIdentityUserUpdateRolesDto._(
              roleNames: roleNames.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roleNames';
        roleNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IdentityIdentityUserUpdateRolesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
