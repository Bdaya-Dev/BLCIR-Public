// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_vote_for_transaction_proposal_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateVoteForTransactionProposalDto
    extends BdayaBLCIRMStateVoteForTransactionProposalDto {
  @override
  final bool? result;
  @override
  final String? notes;

  factory _$BdayaBLCIRMStateVoteForTransactionProposalDto(
          [void Function(BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMStateVoteForTransactionProposalDto._({this.result, this.notes})
      : super._();

  @override
  BdayaBLCIRMStateVoteForTransactionProposalDto rebuild(
          void Function(BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateVoteForTransactionProposalDto &&
        result == other.result &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMStateVoteForTransactionProposalDto')
          ..add('result', result)
          ..add('notes', notes))
        .toString();
  }
}

class BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder
    implements
        Builder<BdayaBLCIRMStateVoteForTransactionProposalDto,
            BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder> {
  _$BdayaBLCIRMStateVoteForTransactionProposalDto? _$v;

  bool? _result;
  bool? get result => _$this._result;
  set result(bool? result) => _$this._result = result;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder() {
    BdayaBLCIRMStateVoteForTransactionProposalDto._defaults(this);
  }

  BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateVoteForTransactionProposalDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateVoteForTransactionProposalDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateVoteForTransactionProposalDto build() => _build();

  _$BdayaBLCIRMStateVoteForTransactionProposalDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateVoteForTransactionProposalDto._(
            result: result, notes: notes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
