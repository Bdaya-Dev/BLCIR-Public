// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_paged_result_dto1_bdaya_blcirm_state_transaction_proposal_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto
    extends ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto {
  @override
  final BuiltList<BdayaBLCIRMStateTransactionProposalDto>? items;
  @override
  final int? totalCount;

  factory _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto(
          [void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder)?
              updates]) =>
      (new ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto._(
      {this.items, this.totalCount})
      : super._();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto rebuild(
          void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder
      toBuilder() =>
          new ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto &&
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
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto')
          ..add('items', items)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder
    implements
        Builder<
            ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto,
            ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder> {
  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto? _$v;

  ListBuilder<BdayaBLCIRMStateTransactionProposalDto>? _items;
  ListBuilder<BdayaBLCIRMStateTransactionProposalDto> get items =>
      _$this._items ??=
          new ListBuilder<BdayaBLCIRMStateTransactionProposalDto>();
  set items(ListBuilder<BdayaBLCIRMStateTransactionProposalDto>? items) =>
      _$this._items = items;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder() {
    ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto
        ._defaults(this);
  }

  ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder
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
      ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto
      build() => _build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto
      _build() {
    _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto
        _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto
              ._(items: _items?.build(), totalCount: totalCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMStateTransactionProposalDto',
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
