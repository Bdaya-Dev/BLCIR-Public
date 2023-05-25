// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_paged_result_dto1_volo_abp_tenant_management_tenant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto
    extends ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto {
  @override
  final BuiltList<TenantManagementTenantDto>? items;
  @override
  final int? totalCount;

  factory _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto(
          [void Function(
                  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder)?
              updates]) =>
      (new ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto._(
      {this.items, this.totalCount})
      : super._();

  @override
  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto rebuild(
          void Function(
                  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder
      toBuilder() =>
          new ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto &&
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
            r'ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto')
          ..add('items', items)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder
    implements
        Builder<ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto,
            ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder> {
  _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto? _$v;

  ListBuilder<TenantManagementTenantDto>? _items;
  ListBuilder<TenantManagementTenantDto> get items =>
      _$this._items ??= new ListBuilder<TenantManagementTenantDto>();
  set items(ListBuilder<TenantManagementTenantDto>? items) =>
      _$this._items = items;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder() {
    ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto._defaults(
        this);
  }

  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder
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
      ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto build() =>
      _build();

  _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto _build() {
    _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto
              ._(items: _items?.build(), totalCount: totalCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto',
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
