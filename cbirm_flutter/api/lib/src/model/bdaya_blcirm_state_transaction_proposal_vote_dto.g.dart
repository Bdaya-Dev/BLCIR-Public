// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_transaction_proposal_vote_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateTransactionProposalVoteDto
    extends BdayaBLCIRMStateTransactionProposalVoteDto {
  @override
  final String? id;
  @override
  final DateTime? creationTime;
  @override
  final String? creatorId;
  @override
  final String? tenantId;
  @override
  final bool? result;
  @override
  final String? notes;

  factory _$BdayaBLCIRMStateTransactionProposalVoteDto(
          [void Function(BdayaBLCIRMStateTransactionProposalVoteDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateTransactionProposalVoteDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStateTransactionProposalVoteDto._(
      {this.id,
      this.creationTime,
      this.creatorId,
      this.tenantId,
      this.result,
      this.notes})
      : super._();

  @override
  BdayaBLCIRMStateTransactionProposalVoteDto rebuild(
          void Function(BdayaBLCIRMStateTransactionProposalVoteDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateTransactionProposalVoteDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateTransactionProposalVoteDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateTransactionProposalVoteDto &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        tenantId == other.tenantId &&
        result == other.result &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMStateTransactionProposalVoteDto')
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('tenantId', tenantId)
          ..add('result', result)
          ..add('notes', notes))
        .toString();
  }
}

class BdayaBLCIRMStateTransactionProposalVoteDtoBuilder
    implements
        Builder<BdayaBLCIRMStateTransactionProposalVoteDto,
            BdayaBLCIRMStateTransactionProposalVoteDtoBuilder> {
  _$BdayaBLCIRMStateTransactionProposalVoteDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  bool? _result;
  bool? get result => _$this._result;
  set result(bool? result) => _$this._result = result;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  BdayaBLCIRMStateTransactionProposalVoteDtoBuilder() {
    BdayaBLCIRMStateTransactionProposalVoteDto._defaults(this);
  }

  BdayaBLCIRMStateTransactionProposalVoteDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _creationTime = $v.creationTime;
      _creatorId = $v.creatorId;
      _tenantId = $v.tenantId;
      _result = $v.result;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateTransactionProposalVoteDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateTransactionProposalVoteDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateTransactionProposalVoteDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateTransactionProposalVoteDto build() => _build();

  _$BdayaBLCIRMStateTransactionProposalVoteDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateTransactionProposalVoteDto._(
            id: id,
            creationTime: creationTime,
            creatorId: creatorId,
            tenantId: tenantId,
            result: result,
            notes: notes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
