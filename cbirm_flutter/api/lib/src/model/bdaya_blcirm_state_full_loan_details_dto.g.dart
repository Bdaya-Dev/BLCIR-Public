// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_full_loan_details_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateFullLoanDetailsDto
    extends BdayaBLCIRMStateFullLoanDetailsDto {
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
  final BdayaBLCIRMTenantsAppTenantDto? tenant;
  @override
  final BdayaBLCIRMStateDocumentDto? document;
  @override
  final BdayaBLCIRMStatePersonDto? person;
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

  factory _$BdayaBLCIRMStateFullLoanDetailsDto(
          [void Function(BdayaBLCIRMStateFullLoanDetailsDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateFullLoanDetailsDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStateFullLoanDetailsDto._(
      {this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.tenant,
      this.document,
      this.person,
      this.physicalCopies,
      this.returnedCopies,
      this.remainingCopies,
      this.returnDate,
      this.actualReturnDate})
      : super._();

  @override
  BdayaBLCIRMStateFullLoanDetailsDto rebuild(
          void Function(BdayaBLCIRMStateFullLoanDetailsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateFullLoanDetailsDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateFullLoanDetailsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateFullLoanDetailsDto &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        isDeleted == other.isDeleted &&
        deleterId == other.deleterId &&
        deletionTime == other.deletionTime &&
        tenant == other.tenant &&
        document == other.document &&
        person == other.person &&
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
    _$hash = $jc(_$hash, tenant.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, person.hashCode);
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
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateFullLoanDetailsDto')
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('isDeleted', isDeleted)
          ..add('deleterId', deleterId)
          ..add('deletionTime', deletionTime)
          ..add('tenant', tenant)
          ..add('document', document)
          ..add('person', person)
          ..add('physicalCopies', physicalCopies)
          ..add('returnedCopies', returnedCopies)
          ..add('remainingCopies', remainingCopies)
          ..add('returnDate', returnDate)
          ..add('actualReturnDate', actualReturnDate))
        .toString();
  }
}

class BdayaBLCIRMStateFullLoanDetailsDtoBuilder
    implements
        Builder<BdayaBLCIRMStateFullLoanDetailsDto,
            BdayaBLCIRMStateFullLoanDetailsDtoBuilder> {
  _$BdayaBLCIRMStateFullLoanDetailsDto? _$v;

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

  BdayaBLCIRMTenantsAppTenantDtoBuilder? _tenant;
  BdayaBLCIRMTenantsAppTenantDtoBuilder get tenant =>
      _$this._tenant ??= new BdayaBLCIRMTenantsAppTenantDtoBuilder();
  set tenant(BdayaBLCIRMTenantsAppTenantDtoBuilder? tenant) =>
      _$this._tenant = tenant;

  BdayaBLCIRMStateDocumentDto? _document;
  BdayaBLCIRMStateDocumentDto? get document => _$this._document;
  set document(BdayaBLCIRMStateDocumentDto? document) =>
      _$this._document = document;

  BdayaBLCIRMStatePersonDto? _person;
  BdayaBLCIRMStatePersonDto? get person => _$this._person;
  set person(BdayaBLCIRMStatePersonDto? person) => _$this._person = person;

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

  BdayaBLCIRMStateFullLoanDetailsDtoBuilder() {
    BdayaBLCIRMStateFullLoanDetailsDto._defaults(this);
  }

  BdayaBLCIRMStateFullLoanDetailsDtoBuilder get _$this {
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
      _tenant = $v.tenant?.toBuilder();
      _document = $v.document;
      _person = $v.person;
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
  void replace(BdayaBLCIRMStateFullLoanDetailsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateFullLoanDetailsDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateFullLoanDetailsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateFullLoanDetailsDto build() => _build();

  _$BdayaBLCIRMStateFullLoanDetailsDto _build() {
    _$BdayaBLCIRMStateFullLoanDetailsDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMStateFullLoanDetailsDto._(
              id: id,
              creationTime: creationTime,
              creatorId: creatorId,
              lastModificationTime: lastModificationTime,
              lastModifierId: lastModifierId,
              isDeleted: isDeleted,
              deleterId: deleterId,
              deletionTime: deletionTime,
              tenant: _tenant?.build(),
              document: document,
              person: person,
              physicalCopies: physicalCopies,
              returnedCopies: returnedCopies,
              remainingCopies: remainingCopies,
              returnDate: returnDate,
              actualReturnDate: actualReturnDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenant';
        _tenant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMStateFullLoanDetailsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
