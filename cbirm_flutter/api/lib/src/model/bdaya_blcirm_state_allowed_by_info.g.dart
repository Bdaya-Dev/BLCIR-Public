// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_allowed_by_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateAllowedByInfo extends BdayaBLCIRMStateAllowedByInfo {
  @override
  final String? tenantId;
  @override
  final String? creatorId;
  @override
  final DateTime? creationTime;

  factory _$BdayaBLCIRMStateAllowedByInfo(
          [void Function(BdayaBLCIRMStateAllowedByInfoBuilder)? updates]) =>
      (new BdayaBLCIRMStateAllowedByInfoBuilder()..update(updates))._build();

  _$BdayaBLCIRMStateAllowedByInfo._(
      {this.tenantId, this.creatorId, this.creationTime})
      : super._();

  @override
  BdayaBLCIRMStateAllowedByInfo rebuild(
          void Function(BdayaBLCIRMStateAllowedByInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateAllowedByInfoBuilder toBuilder() =>
      new BdayaBLCIRMStateAllowedByInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateAllowedByInfo &&
        tenantId == other.tenantId &&
        creatorId == other.creatorId &&
        creationTime == other.creationTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateAllowedByInfo')
          ..add('tenantId', tenantId)
          ..add('creatorId', creatorId)
          ..add('creationTime', creationTime))
        .toString();
  }
}

class BdayaBLCIRMStateAllowedByInfoBuilder
    implements
        Builder<BdayaBLCIRMStateAllowedByInfo,
            BdayaBLCIRMStateAllowedByInfoBuilder> {
  _$BdayaBLCIRMStateAllowedByInfo? _$v;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  BdayaBLCIRMStateAllowedByInfoBuilder() {
    BdayaBLCIRMStateAllowedByInfo._defaults(this);
  }

  BdayaBLCIRMStateAllowedByInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId;
      _creatorId = $v.creatorId;
      _creationTime = $v.creationTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateAllowedByInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateAllowedByInfo;
  }

  @override
  void update(void Function(BdayaBLCIRMStateAllowedByInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateAllowedByInfo build() => _build();

  _$BdayaBLCIRMStateAllowedByInfo _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateAllowedByInfo._(
            tenantId: tenantId,
            creatorId: creatorId,
            creationTime: creationTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
