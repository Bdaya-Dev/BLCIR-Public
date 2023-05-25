// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_compcat_tenant_entry_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateCompcatTenantEntryDto
    extends BdayaBLCIRMStateCompcatTenantEntryDto {
  @override
  final String? id;
  @override
  final String? tenantId;
  @override
  final String? name;
  @override
  final int? ownedQuantity;
  @override
  final int? loanedQuantity;
  @override
  final int? availableQuantity;
  @override
  final bool? isAvailableOnline;

  factory _$BdayaBLCIRMStateCompcatTenantEntryDto(
          [void Function(BdayaBLCIRMStateCompcatTenantEntryDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateCompcatTenantEntryDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStateCompcatTenantEntryDto._(
      {this.id,
      this.tenantId,
      this.name,
      this.ownedQuantity,
      this.loanedQuantity,
      this.availableQuantity,
      this.isAvailableOnline})
      : super._();

  @override
  BdayaBLCIRMStateCompcatTenantEntryDto rebuild(
          void Function(BdayaBLCIRMStateCompcatTenantEntryDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateCompcatTenantEntryDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateCompcatTenantEntryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateCompcatTenantEntryDto &&
        id == other.id &&
        tenantId == other.tenantId &&
        name == other.name &&
        ownedQuantity == other.ownedQuantity &&
        loanedQuantity == other.loanedQuantity &&
        availableQuantity == other.availableQuantity &&
        isAvailableOnline == other.isAvailableOnline;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ownedQuantity.hashCode);
    _$hash = $jc(_$hash, loanedQuantity.hashCode);
    _$hash = $jc(_$hash, availableQuantity.hashCode);
    _$hash = $jc(_$hash, isAvailableOnline.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMStateCompcatTenantEntryDto')
          ..add('id', id)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('ownedQuantity', ownedQuantity)
          ..add('loanedQuantity', loanedQuantity)
          ..add('availableQuantity', availableQuantity)
          ..add('isAvailableOnline', isAvailableOnline))
        .toString();
  }
}

class BdayaBLCIRMStateCompcatTenantEntryDtoBuilder
    implements
        Builder<BdayaBLCIRMStateCompcatTenantEntryDto,
            BdayaBLCIRMStateCompcatTenantEntryDtoBuilder> {
  _$BdayaBLCIRMStateCompcatTenantEntryDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _ownedQuantity;
  int? get ownedQuantity => _$this._ownedQuantity;
  set ownedQuantity(int? ownedQuantity) =>
      _$this._ownedQuantity = ownedQuantity;

  int? _loanedQuantity;
  int? get loanedQuantity => _$this._loanedQuantity;
  set loanedQuantity(int? loanedQuantity) =>
      _$this._loanedQuantity = loanedQuantity;

  int? _availableQuantity;
  int? get availableQuantity => _$this._availableQuantity;
  set availableQuantity(int? availableQuantity) =>
      _$this._availableQuantity = availableQuantity;

  bool? _isAvailableOnline;
  bool? get isAvailableOnline => _$this._isAvailableOnline;
  set isAvailableOnline(bool? isAvailableOnline) =>
      _$this._isAvailableOnline = isAvailableOnline;

  BdayaBLCIRMStateCompcatTenantEntryDtoBuilder() {
    BdayaBLCIRMStateCompcatTenantEntryDto._defaults(this);
  }

  BdayaBLCIRMStateCompcatTenantEntryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tenantId = $v.tenantId;
      _name = $v.name;
      _ownedQuantity = $v.ownedQuantity;
      _loanedQuantity = $v.loanedQuantity;
      _availableQuantity = $v.availableQuantity;
      _isAvailableOnline = $v.isAvailableOnline;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateCompcatTenantEntryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateCompcatTenantEntryDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateCompcatTenantEntryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateCompcatTenantEntryDto build() => _build();

  _$BdayaBLCIRMStateCompcatTenantEntryDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateCompcatTenantEntryDto._(
            id: id,
            tenantId: tenantId,
            name: name,
            ownedQuantity: ownedQuantity,
            loanedQuantity: loanedQuantity,
            availableQuantity: availableQuantity,
            isAvailableOnline: isAvailableOnline);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
