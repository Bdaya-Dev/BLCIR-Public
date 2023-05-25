// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_transfer_document_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateTransferDocumentDto
    extends BdayaBLCIRMStateTransferDocumentDto {
  @override
  final String? targetTenantId;
  @override
  final int? quantity;
  @override
  final String? notes;
  @override
  final double? pricePerItem;

  factory _$BdayaBLCIRMStateTransferDocumentDto(
          [void Function(BdayaBLCIRMStateTransferDocumentDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateTransferDocumentDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStateTransferDocumentDto._(
      {this.targetTenantId, this.quantity, this.notes, this.pricePerItem})
      : super._();

  @override
  BdayaBLCIRMStateTransferDocumentDto rebuild(
          void Function(BdayaBLCIRMStateTransferDocumentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateTransferDocumentDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateTransferDocumentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateTransferDocumentDto &&
        targetTenantId == other.targetTenantId &&
        quantity == other.quantity &&
        notes == other.notes &&
        pricePerItem == other.pricePerItem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetTenantId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, pricePerItem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateTransferDocumentDto')
          ..add('targetTenantId', targetTenantId)
          ..add('quantity', quantity)
          ..add('notes', notes)
          ..add('pricePerItem', pricePerItem))
        .toString();
  }
}

class BdayaBLCIRMStateTransferDocumentDtoBuilder
    implements
        Builder<BdayaBLCIRMStateTransferDocumentDto,
            BdayaBLCIRMStateTransferDocumentDtoBuilder> {
  _$BdayaBLCIRMStateTransferDocumentDto? _$v;

  String? _targetTenantId;
  String? get targetTenantId => _$this._targetTenantId;
  set targetTenantId(String? targetTenantId) =>
      _$this._targetTenantId = targetTenantId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  double? _pricePerItem;
  double? get pricePerItem => _$this._pricePerItem;
  set pricePerItem(double? pricePerItem) => _$this._pricePerItem = pricePerItem;

  BdayaBLCIRMStateTransferDocumentDtoBuilder() {
    BdayaBLCIRMStateTransferDocumentDto._defaults(this);
  }

  BdayaBLCIRMStateTransferDocumentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetTenantId = $v.targetTenantId;
      _quantity = $v.quantity;
      _notes = $v.notes;
      _pricePerItem = $v.pricePerItem;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateTransferDocumentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateTransferDocumentDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateTransferDocumentDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateTransferDocumentDto build() => _build();

  _$BdayaBLCIRMStateTransferDocumentDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateTransferDocumentDto._(
            targetTenantId: targetTenantId,
            quantity: quantity,
            notes: notes,
            pricePerItem: pricePerItem);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
