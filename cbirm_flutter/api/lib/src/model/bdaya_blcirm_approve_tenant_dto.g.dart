// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_approve_tenant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMApproveTenantDto extends BdayaBLCIRMApproveTenantDto {
  @override
  final String? tenantId;
  @override
  final bool? result;
  @override
  final String? reason;

  factory _$BdayaBLCIRMApproveTenantDto(
          [void Function(BdayaBLCIRMApproveTenantDtoBuilder)? updates]) =>
      (new BdayaBLCIRMApproveTenantDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMApproveTenantDto._({this.tenantId, this.result, this.reason})
      : super._();

  @override
  BdayaBLCIRMApproveTenantDto rebuild(
          void Function(BdayaBLCIRMApproveTenantDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMApproveTenantDtoBuilder toBuilder() =>
      new BdayaBLCIRMApproveTenantDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMApproveTenantDto &&
        tenantId == other.tenantId &&
        result == other.result &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMApproveTenantDto')
          ..add('tenantId', tenantId)
          ..add('result', result)
          ..add('reason', reason))
        .toString();
  }
}

class BdayaBLCIRMApproveTenantDtoBuilder
    implements
        Builder<BdayaBLCIRMApproveTenantDto,
            BdayaBLCIRMApproveTenantDtoBuilder> {
  _$BdayaBLCIRMApproveTenantDto? _$v;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  bool? _result;
  bool? get result => _$this._result;
  set result(bool? result) => _$this._result = result;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  BdayaBLCIRMApproveTenantDtoBuilder() {
    BdayaBLCIRMApproveTenantDto._defaults(this);
  }

  BdayaBLCIRMApproveTenantDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId;
      _result = $v.result;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMApproveTenantDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMApproveTenantDto;
  }

  @override
  void update(void Function(BdayaBLCIRMApproveTenantDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMApproveTenantDto build() => _build();

  _$BdayaBLCIRMApproveTenantDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMApproveTenantDto._(
            tenantId: tenantId, result: result, reason: reason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
