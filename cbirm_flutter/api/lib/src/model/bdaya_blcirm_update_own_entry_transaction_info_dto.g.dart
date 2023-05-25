// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_update_own_entry_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto
    extends BdayaBLCIRMUpdateOwnEntryTransactionInfoDto {
  @override
  final int? newAvailableCount;
  @override
  final bool? isAvailableOnline;
  @override
  final String? documentId;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto(
          [void Function(BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto._(
      {this.newAvailableCount,
      this.isAvailableOnline,
      this.documentId,
      this.dollarType})
      : super._();

  @override
  BdayaBLCIRMUpdateOwnEntryTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMUpdateOwnEntryTransactionInfoDto &&
        newAvailableCount == other.newAvailableCount &&
        isAvailableOnline == other.isAvailableOnline &&
        documentId == other.documentId &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newAvailableCount.hashCode);
    _$hash = $jc(_$hash, isAvailableOnline.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMUpdateOwnEntryTransactionInfoDto')
          ..add('newAvailableCount', newAvailableCount)
          ..add('isAvailableOnline', isAvailableOnline)
          ..add('documentId', documentId)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMUpdateOwnEntryTransactionInfoDto,
            BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto? _$v;

  int? _newAvailableCount;
  int? get newAvailableCount => _$this._newAvailableCount;
  set newAvailableCount(covariant int? newAvailableCount) =>
      _$this._newAvailableCount = newAvailableCount;

  bool? _isAvailableOnline;
  bool? get isAvailableOnline => _$this._isAvailableOnline;
  set isAvailableOnline(covariant bool? isAvailableOnline) =>
      _$this._isAvailableOnline = isAvailableOnline;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(covariant String? documentId) =>
      _$this._documentId = documentId;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder() {
    BdayaBLCIRMUpdateOwnEntryTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newAvailableCount = $v.newAvailableCount;
      _isAvailableOnline = $v.isAvailableOnline;
      _documentId = $v.documentId;
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMUpdateOwnEntryTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMUpdateOwnEntryTransactionInfoDto build() => _build();

  _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto._(
            newAvailableCount: newAvailableCount,
            isAvailableOnline: isAvailableOnline,
            documentId: documentId,
            dollarType: dollarType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
