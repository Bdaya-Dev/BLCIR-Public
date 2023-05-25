// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_delete_author_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMDeleteAuthorTransactionInfoDto
    extends BdayaBLCIRMDeleteAuthorTransactionInfoDto {
  @override
  final String? authorId;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMDeleteAuthorTransactionInfoDto(
          [void Function(BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMDeleteAuthorTransactionInfoDto._(
      {this.authorId, this.dollarType})
      : super._();

  @override
  BdayaBLCIRMDeleteAuthorTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMDeleteAuthorTransactionInfoDto &&
        authorId == other.authorId &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorId.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMDeleteAuthorTransactionInfoDto')
          ..add('authorId', authorId)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMDeleteAuthorTransactionInfoDto,
            BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMDeleteAuthorTransactionInfoDto? _$v;

  String? _authorId;
  String? get authorId => _$this._authorId;
  set authorId(covariant String? authorId) => _$this._authorId = authorId;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder() {
    BdayaBLCIRMDeleteAuthorTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorId = $v.authorId;
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMDeleteAuthorTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMDeleteAuthorTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMDeleteAuthorTransactionInfoDto build() => _build();

  _$BdayaBLCIRMDeleteAuthorTransactionInfoDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMDeleteAuthorTransactionInfoDto._(
            authorId: authorId, dollarType: dollarType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
