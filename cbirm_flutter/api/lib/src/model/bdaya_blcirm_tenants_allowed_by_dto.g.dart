// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_tenants_allowed_by_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMTenantsAllowedByDto extends BdayaBLCIRMTenantsAllowedByDto {
  @override
  final DateTime? creationTime;
  @override
  final String? creatorId;
  @override
  final String? tenantId;
  @override
  final bool? result;
  @override
  final String? reason;

  factory _$BdayaBLCIRMTenantsAllowedByDto(
          [void Function(BdayaBLCIRMTenantsAllowedByDtoBuilder)? updates]) =>
      (new BdayaBLCIRMTenantsAllowedByDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMTenantsAllowedByDto._(
      {this.creationTime,
      this.creatorId,
      this.tenantId,
      this.result,
      this.reason})
      : super._();

  @override
  BdayaBLCIRMTenantsAllowedByDto rebuild(
          void Function(BdayaBLCIRMTenantsAllowedByDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMTenantsAllowedByDtoBuilder toBuilder() =>
      new BdayaBLCIRMTenantsAllowedByDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMTenantsAllowedByDto &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        tenantId == other.tenantId &&
        result == other.result &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMTenantsAllowedByDto')
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('tenantId', tenantId)
          ..add('result', result)
          ..add('reason', reason))
        .toString();
  }
}

class BdayaBLCIRMTenantsAllowedByDtoBuilder
    implements
        Builder<BdayaBLCIRMTenantsAllowedByDto,
            BdayaBLCIRMTenantsAllowedByDtoBuilder> {
  _$BdayaBLCIRMTenantsAllowedByDto? _$v;

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

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  BdayaBLCIRMTenantsAllowedByDtoBuilder() {
    BdayaBLCIRMTenantsAllowedByDto._defaults(this);
  }

  BdayaBLCIRMTenantsAllowedByDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creationTime = $v.creationTime;
      _creatorId = $v.creatorId;
      _tenantId = $v.tenantId;
      _result = $v.result;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMTenantsAllowedByDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMTenantsAllowedByDto;
  }

  @override
  void update(void Function(BdayaBLCIRMTenantsAllowedByDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMTenantsAllowedByDto build() => _build();

  _$BdayaBLCIRMTenantsAllowedByDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMTenantsAllowedByDto._(
            creationTime: creationTime,
            creatorId: creatorId,
            tenantId: tenantId,
            result: result,
            reason: reason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
