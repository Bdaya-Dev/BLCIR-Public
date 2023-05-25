// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_paged_result_dto1_bdaya_blcirm_tenants_app_tenant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto
    extends ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto {
  @override
  final BuiltList<BdayaBLCIRMTenantsAppTenantDto>? items;
  @override
  final int? totalCount;

  factory _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto(
          [void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder)?
              updates]) =>
      (new ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto._(
      {this.items, this.totalCount})
      : super._();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto rebuild(
          void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder
      toBuilder() =>
          new ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto &&
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
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto')
          ..add('items', items)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder
    implements
        Builder<ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto,
            ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder> {
  _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto? _$v;

  ListBuilder<BdayaBLCIRMTenantsAppTenantDto>? _items;
  ListBuilder<BdayaBLCIRMTenantsAppTenantDto> get items =>
      _$this._items ??= new ListBuilder<BdayaBLCIRMTenantsAppTenantDto>();
  set items(ListBuilder<BdayaBLCIRMTenantsAppTenantDto>? items) =>
      _$this._items = items;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder() {
    ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto._defaults(
        this);
  }

  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder
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
      ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto build() =>
      _build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto _build() {
    _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto._(
              items: _items?.build(), totalCount: totalCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto',
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
