// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_people_create_author_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStatePeopleCreateAuthorDto
    extends BdayaBLCIRMStatePeopleCreateAuthorDto {
  @override
  final BdayaBLCIRMStatePersonInfoDto? info;
  @override
  final String? type;

  factory _$BdayaBLCIRMStatePeopleCreateAuthorDto(
          [void Function(BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStatePeopleCreateAuthorDto._({this.info, this.type}) : super._();

  @override
  BdayaBLCIRMStatePeopleCreateAuthorDto rebuild(
          void Function(BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder toBuilder() =>
      new BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStatePeopleCreateAuthorDto &&
        info == other.info &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMStatePeopleCreateAuthorDto')
          ..add('info', info)
          ..add('type', type))
        .toString();
  }
}

class BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder
    implements
        Builder<BdayaBLCIRMStatePeopleCreateAuthorDto,
            BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder>,
        BdayaBLCIRMStatePeopleCreatePersonDtoBuilder {
  _$BdayaBLCIRMStatePeopleCreateAuthorDto? _$v;

  BdayaBLCIRMStatePersonInfoDtoBuilder? _info;
  BdayaBLCIRMStatePersonInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMStatePersonInfoDtoBuilder();
  set info(covariant BdayaBLCIRMStatePersonInfoDtoBuilder? info) =>
      _$this._info = info;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder() {
    BdayaBLCIRMStatePeopleCreateAuthorDto._defaults(this);
  }

  BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _info = $v.info?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMStatePeopleCreateAuthorDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStatePeopleCreateAuthorDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStatePeopleCreateAuthorDto build() => _build();

  _$BdayaBLCIRMStatePeopleCreateAuthorDto _build() {
    _$BdayaBLCIRMStatePeopleCreateAuthorDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMStatePeopleCreateAuthorDto._(
              info: _info?.build(), type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMStatePeopleCreateAuthorDto',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
