// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_transaction_proposal_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateTransactionProposalDto
    extends BdayaBLCIRMStateTransactionProposalDto {
  @override
  final String? id;
  @override
  final DateTime? creationTime;
  @override
  final String? creatorId;
  @override
  final DateTime? lastModificationTime;
  @override
  final String? lastModifierId;
  @override
  final String? tenantId;
  @override
  final BdayaBLCIRMStateTransactionInfoDto? info;
  @override
  final String? calculatedHash;
  @override
  final BuiltList<BdayaBLCIRMStateTransactionProposalVoteDto>? votes;
  @override
  final bool? completionResult;
  @override
  final DateTime? completedAt;

  factory _$BdayaBLCIRMStateTransactionProposalDto(
          [void Function(BdayaBLCIRMStateTransactionProposalDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateTransactionProposalDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStateTransactionProposalDto._(
      {this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.tenantId,
      this.info,
      this.calculatedHash,
      this.votes,
      this.completionResult,
      this.completedAt})
      : super._();

  @override
  BdayaBLCIRMStateTransactionProposalDto rebuild(
          void Function(BdayaBLCIRMStateTransactionProposalDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateTransactionProposalDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateTransactionProposalDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateTransactionProposalDto &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        tenantId == other.tenantId &&
        info == other.info &&
        calculatedHash == other.calculatedHash &&
        votes == other.votes &&
        completionResult == other.completionResult &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, lastModificationTime.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, calculatedHash.hashCode);
    _$hash = $jc(_$hash, votes.hashCode);
    _$hash = $jc(_$hash, completionResult.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMStateTransactionProposalDto')
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('tenantId', tenantId)
          ..add('info', info)
          ..add('calculatedHash', calculatedHash)
          ..add('votes', votes)
          ..add('completionResult', completionResult)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class BdayaBLCIRMStateTransactionProposalDtoBuilder
    implements
        Builder<BdayaBLCIRMStateTransactionProposalDto,
            BdayaBLCIRMStateTransactionProposalDtoBuilder> {
  _$BdayaBLCIRMStateTransactionProposalDto? _$v;

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

  DateTime? _lastModificationTime;
  DateTime? get lastModificationTime => _$this._lastModificationTime;
  set lastModificationTime(DateTime? lastModificationTime) =>
      _$this._lastModificationTime = lastModificationTime;

  String? _lastModifierId;
  String? get lastModifierId => _$this._lastModifierId;
  set lastModifierId(String? lastModifierId) =>
      _$this._lastModifierId = lastModifierId;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  BdayaBLCIRMStateTransactionInfoDto? _info;
  BdayaBLCIRMStateTransactionInfoDto? get info => _$this._info;
  set info(BdayaBLCIRMStateTransactionInfoDto? info) => _$this._info = info;

  String? _calculatedHash;
  String? get calculatedHash => _$this._calculatedHash;
  set calculatedHash(String? calculatedHash) =>
      _$this._calculatedHash = calculatedHash;

  ListBuilder<BdayaBLCIRMStateTransactionProposalVoteDto>? _votes;
  ListBuilder<BdayaBLCIRMStateTransactionProposalVoteDto> get votes =>
      _$this._votes ??=
          new ListBuilder<BdayaBLCIRMStateTransactionProposalVoteDto>();
  set votes(ListBuilder<BdayaBLCIRMStateTransactionProposalVoteDto>? votes) =>
      _$this._votes = votes;

  bool? _completionResult;
  bool? get completionResult => _$this._completionResult;
  set completionResult(bool? completionResult) =>
      _$this._completionResult = completionResult;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  BdayaBLCIRMStateTransactionProposalDtoBuilder() {
    BdayaBLCIRMStateTransactionProposalDto._defaults(this);
  }

  BdayaBLCIRMStateTransactionProposalDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _creationTime = $v.creationTime;
      _creatorId = $v.creatorId;
      _lastModificationTime = $v.lastModificationTime;
      _lastModifierId = $v.lastModifierId;
      _tenantId = $v.tenantId;
      _info = $v.info;
      _calculatedHash = $v.calculatedHash;
      _votes = $v.votes?.toBuilder();
      _completionResult = $v.completionResult;
      _completedAt = $v.completedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateTransactionProposalDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateTransactionProposalDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateTransactionProposalDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateTransactionProposalDto build() => _build();

  _$BdayaBLCIRMStateTransactionProposalDto _build() {
    _$BdayaBLCIRMStateTransactionProposalDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMStateTransactionProposalDto._(
              id: id,
              creationTime: creationTime,
              creatorId: creatorId,
              lastModificationTime: lastModificationTime,
              lastModifierId: lastModifierId,
              tenantId: tenantId,
              info: info,
              calculatedHash: calculatedHash,
              votes: _votes?.build(),
              completionResult: completionResult,
              completedAt: completedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'votes';
        _votes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMStateTransactionProposalDto',
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
