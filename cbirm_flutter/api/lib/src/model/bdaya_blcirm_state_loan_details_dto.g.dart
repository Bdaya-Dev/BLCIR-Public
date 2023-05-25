// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_loan_details_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateLoanDetailsDto extends BdayaBLCIRMStateLoanDetailsDto {
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
  final bool? isDeleted;
  @override
  final String? deleterId;
  @override
  final DateTime? deletionTime;
  @override
  final String? tenantId;
  @override
  final String? documentId;
  @override
  final String? personId;
  @override
  final int? physicalCopies;
  @override
  final int? returnedCopies;
  @override
  final int? remainingCopies;
  @override
  final DateTime? returnDate;
  @override
  final DateTime? actualReturnDate;

  factory _$BdayaBLCIRMStateLoanDetailsDto(
          [void Function(BdayaBLCIRMStateLoanDetailsDtoBuilder)? updates]) =>
      (new BdayaBLCIRMStateLoanDetailsDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMStateLoanDetailsDto._(
      {this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.tenantId,
      this.documentId,
      this.personId,
      this.physicalCopies,
      this.returnedCopies,
      this.remainingCopies,
      this.returnDate,
      this.actualReturnDate})
      : super._();

  @override
  BdayaBLCIRMStateLoanDetailsDto rebuild(
          void Function(BdayaBLCIRMStateLoanDetailsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateLoanDetailsDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateLoanDetailsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateLoanDetailsDto &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        isDeleted == other.isDeleted &&
        deleterId == other.deleterId &&
        deletionTime == other.deletionTime &&
        tenantId == other.tenantId &&
        documentId == other.documentId &&
        personId == other.personId &&
        physicalCopies == other.physicalCopies &&
        returnedCopies == other.returnedCopies &&
        remainingCopies == other.remainingCopies &&
        returnDate == other.returnDate &&
        actualReturnDate == other.actualReturnDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, lastModificationTime.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jc(_$hash, deleterId.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, physicalCopies.hashCode);
    _$hash = $jc(_$hash, returnedCopies.hashCode);
    _$hash = $jc(_$hash, remainingCopies.hashCode);
    _$hash = $jc(_$hash, returnDate.hashCode);
    _$hash = $jc(_$hash, actualReturnDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateLoanDetailsDto')
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('isDeleted', isDeleted)
          ..add('deleterId', deleterId)
          ..add('deletionTime', deletionTime)
          ..add('tenantId', tenantId)
          ..add('documentId', documentId)
          ..add('personId', personId)
          ..add('physicalCopies', physicalCopies)
          ..add('returnedCopies', returnedCopies)
          ..add('remainingCopies', remainingCopies)
          ..add('returnDate', returnDate)
          ..add('actualReturnDate', actualReturnDate))
        .toString();
  }
}

class BdayaBLCIRMStateLoanDetailsDtoBuilder
    implements
        Builder<BdayaBLCIRMStateLoanDetailsDto,
            BdayaBLCIRMStateLoanDetailsDtoBuilder> {
  _$BdayaBLCIRMStateLoanDetailsDto? _$v;

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

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  String? _deleterId;
  String? get deleterId => _$this._deleterId;
  set deleterId(String? deleterId) => _$this._deleterId = deleterId;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(String? personId) => _$this._personId = personId;

  int? _physicalCopies;
  int? get physicalCopies => _$this._physicalCopies;
  set physicalCopies(int? physicalCopies) =>
      _$this._physicalCopies = physicalCopies;

  int? _returnedCopies;
  int? get returnedCopies => _$this._returnedCopies;
  set returnedCopies(int? returnedCopies) =>
      _$this._returnedCopies = returnedCopies;

  int? _remainingCopies;
  int? get remainingCopies => _$this._remainingCopies;
  set remainingCopies(int? remainingCopies) =>
      _$this._remainingCopies = remainingCopies;

  DateTime? _returnDate;
  DateTime? get returnDate => _$this._returnDate;
  set returnDate(DateTime? returnDate) => _$this._returnDate = returnDate;

  DateTime? _actualReturnDate;
  DateTime? get actualReturnDate => _$this._actualReturnDate;
  set actualReturnDate(DateTime? actualReturnDate) =>
      _$this._actualReturnDate = actualReturnDate;

  BdayaBLCIRMStateLoanDetailsDtoBuilder() {
    BdayaBLCIRMStateLoanDetailsDto._defaults(this);
  }

  BdayaBLCIRMStateLoanDetailsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _creationTime = $v.creationTime;
      _creatorId = $v.creatorId;
      _lastModificationTime = $v.lastModificationTime;
      _lastModifierId = $v.lastModifierId;
      _isDeleted = $v.isDeleted;
      _deleterId = $v.deleterId;
      _deletionTime = $v.deletionTime;
      _tenantId = $v.tenantId;
      _documentId = $v.documentId;
      _personId = $v.personId;
      _physicalCopies = $v.physicalCopies;
      _returnedCopies = $v.returnedCopies;
      _remainingCopies = $v.remainingCopies;
      _returnDate = $v.returnDate;
      _actualReturnDate = $v.actualReturnDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateLoanDetailsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateLoanDetailsDto;
  }

  @override
  void update(void Function(BdayaBLCIRMStateLoanDetailsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateLoanDetailsDto build() => _build();

  _$BdayaBLCIRMStateLoanDetailsDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateLoanDetailsDto._(
            id: id,
            creationTime: creationTime,
            creatorId: creatorId,
            lastModificationTime: lastModificationTime,
            lastModifierId: lastModifierId,
            isDeleted: isDeleted,
            deleterId: deleterId,
            deletionTime: deletionTime,
            tenantId: tenantId,
            documentId: documentId,
            personId: personId,
            physicalCopies: physicalCopies,
            returnedCopies: returnedCopies,
            remainingCopies: remainingCopies,
            returnDate: returnDate,
            actualReturnDate: actualReturnDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
