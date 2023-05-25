// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_paged_result_dto1_volo_abp_identity_identity_role_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto
    extends ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto {
  @override
  final BuiltList<IdentityIdentityRoleDto>? items;
  @override
  final int? totalCount;

  factory _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto(
          [void Function(
                  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder)?
              updates]) =>
      (new ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto._(
      {this.items, this.totalCount})
      : super._();

  @override
  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto rebuild(
          void Function(
                  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
      toBuilder() =>
          new ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto &&
        items == other.items &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto')
          ..add('items', items)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
    implements
        Builder<ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto,
            ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder> {
  _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto? _$v;

  ListBuilder<IdentityIdentityRoleDto>? _items;
  ListBuilder<IdentityIdentityRoleDto> get items =>
      _$this._items ??= new ListBuilder<IdentityIdentityRoleDto>();
  set items(ListBuilder<IdentityIdentityRoleDto>? items) =>
      _$this._items = items;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder() {
    ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto._defaults(
        this);
  }

  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto build() =>
      _build();

  _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto _build() {
    _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto._(
              items: _items?.build(), totalCount: totalCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto',
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
