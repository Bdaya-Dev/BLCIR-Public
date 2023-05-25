// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_tenancy_multi_tenancy_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultiTenancyMultiTenancyInfoDto
    extends MultiTenancyMultiTenancyInfoDto {
  @override
  final bool? isEnabled;

  factory _$MultiTenancyMultiTenancyInfoDto(
          [void Function(MultiTenancyMultiTenancyInfoDtoBuilder)? updates]) =>
      (new MultiTenancyMultiTenancyInfoDtoBuilder()..update(updates))._build();

  _$MultiTenancyMultiTenancyInfoDto._({this.isEnabled}) : super._();

  @override
  MultiTenancyMultiTenancyInfoDto rebuild(
          void Function(MultiTenancyMultiTenancyInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultiTenancyMultiTenancyInfoDtoBuilder toBuilder() =>
      new MultiTenancyMultiTenancyInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiTenancyMultiTenancyInfoDto &&
        isEnabled == other.isEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MultiTenancyMultiTenancyInfoDto')
          ..add('isEnabled', isEnabled))
        .toString();
  }
}

class MultiTenancyMultiTenancyInfoDtoBuilder
    implements
        Builder<MultiTenancyMultiTenancyInfoDto,
            MultiTenancyMultiTenancyInfoDtoBuilder> {
  _$MultiTenancyMultiTenancyInfoDto? _$v;

  bool? _isEnabled;
  bool? get isEnabled => _$this._isEnabled;
  set isEnabled(bool? isEnabled) => _$this._isEnabled = isEnabled;

  MultiTenancyMultiTenancyInfoDtoBuilder() {
    MultiTenancyMultiTenancyInfoDto._defaults(this);
  }

  MultiTenancyMultiTenancyInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isEnabled = $v.isEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultiTenancyMultiTenancyInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultiTenancyMultiTenancyInfoDto;
  }

  @override
  void update(void Function(MultiTenancyMultiTenancyInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MultiTenancyMultiTenancyInfoDto build() => _build();

  _$MultiTenancyMultiTenancyInfoDto _build() {
    final _$result =
        _$v ?? new _$MultiTenancyMultiTenancyInfoDto._(isEnabled: isEnabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
