// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_management_get_permission_list_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionManagementGetPermissionListResultDto
    extends PermissionManagementGetPermissionListResultDto {
  @override
  final String? entityDisplayName;
  @override
  final BuiltList<PermissionManagementPermissionGroupDto>? groups;

  factory _$PermissionManagementGetPermissionListResultDto(
          [void Function(PermissionManagementGetPermissionListResultDtoBuilder)?
              updates]) =>
      (new PermissionManagementGetPermissionListResultDtoBuilder()
            ..update(updates))
          ._build();

  _$PermissionManagementGetPermissionListResultDto._(
      {this.entityDisplayName, this.groups})
      : super._();

  @override
  PermissionManagementGetPermissionListResultDto rebuild(
          void Function(PermissionManagementGetPermissionListResultDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionManagementGetPermissionListResultDtoBuilder toBuilder() =>
      new PermissionManagementGetPermissionListResultDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionManagementGetPermissionListResultDto &&
        entityDisplayName == other.entityDisplayName &&
        groups == other.groups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityDisplayName.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PermissionManagementGetPermissionListResultDto')
          ..add('entityDisplayName', entityDisplayName)
          ..add('groups', groups))
        .toString();
  }
}

class PermissionManagementGetPermissionListResultDtoBuilder
    implements
        Builder<PermissionManagementGetPermissionListResultDto,
            PermissionManagementGetPermissionListResultDtoBuilder> {
  _$PermissionManagementGetPermissionListResultDto? _$v;

  String? _entityDisplayName;
  String? get entityDisplayName => _$this._entityDisplayName;
  set entityDisplayName(String? entityDisplayName) =>
      _$this._entityDisplayName = entityDisplayName;

  ListBuilder<PermissionManagementPermissionGroupDto>? _groups;
  ListBuilder<PermissionManagementPermissionGroupDto> get groups =>
      _$this._groups ??=
          new ListBuilder<PermissionManagementPermissionGroupDto>();
  set groups(ListBuilder<PermissionManagementPermissionGroupDto>? groups) =>
      _$this._groups = groups;

  PermissionManagementGetPermissionListResultDtoBuilder() {
    PermissionManagementGetPermissionListResultDto._defaults(this);
  }

  PermissionManagementGetPermissionListResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityDisplayName = $v.entityDisplayName;
      _groups = $v.groups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionManagementGetPermissionListResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionManagementGetPermissionListResultDto;
  }

  @override
  void update(
      void Function(PermissionManagementGetPermissionListResultDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionManagementGetPermissionListResultDto build() => _build();

  _$PermissionManagementGetPermissionListResultDto _build() {
    _$PermissionManagementGetPermissionListResultDto _$result;
    try {
      _$result = _$v ??
          new _$PermissionManagementGetPermissionListResultDto._(
              entityDisplayName: entityDisplayName, groups: _groups?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PermissionManagementGetPermissionListResultDto',
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
