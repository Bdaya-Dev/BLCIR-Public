// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class BdayaBLCIRMStateTransactionInfoDtoBuilder {
  void replace(BdayaBLCIRMStateTransactionInfoDto other);
  void update(void Function(BdayaBLCIRMStateTransactionInfoDtoBuilder) updates);
  String? get dollarType;
  set dollarType(String? dollarType);
}

class _$$BdayaBLCIRMStateTransactionInfoDto
    extends $BdayaBLCIRMStateTransactionInfoDto {
  @override
  final String? dollarType;

  factory _$$BdayaBLCIRMStateTransactionInfoDto(
          [void Function($BdayaBLCIRMStateTransactionInfoDtoBuilder)?
              updates]) =>
      (new $BdayaBLCIRMStateTransactionInfoDtoBuilder()..update(updates))
          ._build();

  _$$BdayaBLCIRMStateTransactionInfoDto._({this.dollarType}) : super._();

  @override
  $BdayaBLCIRMStateTransactionInfoDto rebuild(
          void Function($BdayaBLCIRMStateTransactionInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $BdayaBLCIRMStateTransactionInfoDtoBuilder toBuilder() =>
      new $BdayaBLCIRMStateTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $BdayaBLCIRMStateTransactionInfoDto &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$BdayaBLCIRMStateTransactionInfoDto')
          ..add('dollarType', dollarType))
        .toString();
  }
}

class $BdayaBLCIRMStateTransactionInfoDtoBuilder
    implements
        Builder<$BdayaBLCIRMStateTransactionInfoDto,
            $BdayaBLCIRMStateTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$$BdayaBLCIRMStateTransactionInfoDto? _$v;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  $BdayaBLCIRMStateTransactionInfoDtoBuilder() {
    $BdayaBLCIRMStateTransactionInfoDto._defaults(this);
  }

  $BdayaBLCIRMStateTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $BdayaBLCIRMStateTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$BdayaBLCIRMStateTransactionInfoDto;
  }

  @override
  void update(
      void Function($BdayaBLCIRMStateTransactionInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $BdayaBLCIRMStateTransactionInfoDto build() => _build();

  _$$BdayaBLCIRMStateTransactionInfoDto _build() {
    final _$result = _$v ??
        new _$$BdayaBLCIRMStateTransactionInfoDto._(dollarType: dollarType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
