// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_update_own_entry_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateUpdateOwnEntryRequestDto
    extends BdayaBLCIRMStateUpdateOwnEntryRequestDto {
  @override
  final int? newAvailableCount;
  @override
  final bool? isAvailableOnline;

  factory _$BdayaBLCIRMStateUpdateOwnEntryRequestDto(
          [void Function(BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStateUpdateOwnEntryRequestDto._(
      {this.newAvailableCount, this.isAvailableOnline})
      : super._();

  @override
  BdayaBLCIRMStateUpdateOwnEntryRequestDto rebuild(
          void Function(BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateUpdateOwnEntryRequestDto &&
        newAvailableCount == other.newAvailableCount &&
        isAvailableOnline == other.isAvailableOnline;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newAvailableCount.hashCode);
    _$hash = $jc(_$hash, isAvailableOnline.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMStateUpdateOwnEntryRequestDto')
          ..add('newAvailableCount', newAvailableCount)
          ..add('isAvailableOnline', isAvailableOnline))
        .toString();
  }
}

class BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder
    implements
        Builder<BdayaBLCIRMStateUpdateOwnEntryRequestDto,
            BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder> {
  _$BdayaBLCIRMStateUpdateOwnEntryRequestDto? _$v;

  int? _newAvailableCount;
  int? get newAvailableCount => _$this._newAvailableCount;
  set newAvailableCount(int? newAvailableCount) =>
      _$this._newAvailableCount = newAvailableCount;

  bool? _isAvailableOnline;
  bool? get isAvailableOnline => _$this._isAvailableOnline;
  set isAvailableOnline(bool? isAvailableOnline) =>
      _$this._isAvailableOnline = isAvailableOnline;

  BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder() {
    BdayaBLCIRMStateUpdateOwnEntryRequestDto._defaults(this);
  }

  BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newAvailableCount = $v.newAvailableCount;
      _isAvailableOnline = $v.isAvailableOnline;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateUpdateOwnEntryRequestDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateUpdateOwnEntryRequestDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateUpdateOwnEntryRequestDto build() => _build();

  _$BdayaBLCIRMStateUpdateOwnEntryRequestDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateUpdateOwnEntryRequestDto._(
            newAvailableCount: newAvailableCount,
            isAvailableOnline: isAvailableOnline);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
