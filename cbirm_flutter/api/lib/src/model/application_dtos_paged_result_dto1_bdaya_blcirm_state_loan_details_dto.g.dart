// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_paged_result_dto1_bdaya_blcirm_state_loan_details_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto
    extends ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto {
  @override
  final BuiltList<BdayaBLCIRMStateLoanDetailsDto>? items;
  @override
  final int? totalCount;

  factory _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto(
          [void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder)?
              updates]) =>
      (new ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto._(
      {this.items, this.totalCount})
      : super._();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto rebuild(
          void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder
      toBuilder() =>
          new ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto &&
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
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto')
          ..add('items', items)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder
    implements
        Builder<ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto,
            ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder> {
  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto? _$v;

  ListBuilder<BdayaBLCIRMStateLoanDetailsDto>? _items;
  ListBuilder<BdayaBLCIRMStateLoanDetailsDto> get items =>
      _$this._items ??= new ListBuilder<BdayaBLCIRMStateLoanDetailsDto>();
  set items(ListBuilder<BdayaBLCIRMStateLoanDetailsDto>? items) =>
      _$this._items = items;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder() {
    ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto._defaults(
        this);
  }

  ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder
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
      ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto build() =>
      _build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto _build() {
    _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto._(
              items: _items?.build(), totalCount: totalCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMStateLoanDetailsDto',
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
