// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_list_result_dto1_volo_abp_identity_identity_role_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto
    extends ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto {
  @override
  final BuiltList<IdentityIdentityRoleDto>? items;

  factory _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto(
          [void Function(
                  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder)?
              updates]) =>
      (new ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto._({this.items})
      : super._();

  @override
  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto rebuild(
          void Function(
                  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
      toBuilder() =>
          new ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto')
          ..add('items', items))
        .toString();
  }
}

class ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
    implements
        Builder<ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto,
            ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder> {
  _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto? _$v;

  ListBuilder<IdentityIdentityRoleDto>? _items;
  ListBuilder<IdentityIdentityRoleDto> get items =>
      _$this._items ??= new ListBuilder<IdentityIdentityRoleDto>();
  set items(ListBuilder<IdentityIdentityRoleDto>? items) =>
      _$this._items = items;

  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder() {
    ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto._defaults(this);
  }

  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto build() =>
      _build();

  _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto _build() {
    _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto._(
              items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto',
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
