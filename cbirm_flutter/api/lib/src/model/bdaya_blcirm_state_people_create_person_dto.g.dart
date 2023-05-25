// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_people_create_person_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class BdayaBLCIRMStatePeopleCreatePersonDtoBuilder {
  void replace(BdayaBLCIRMStatePeopleCreatePersonDto other);
  void update(
      void Function(BdayaBLCIRMStatePeopleCreatePersonDtoBuilder) updates);
  BdayaBLCIRMStatePersonInfoDtoBuilder get info;
  set info(BdayaBLCIRMStatePersonInfoDtoBuilder? info);

  String? get type;
  set type(String? type);
}

class _$$BdayaBLCIRMStatePeopleCreatePersonDto
    extends $BdayaBLCIRMStatePeopleCreatePersonDto {
  @override
  final BdayaBLCIRMStatePersonInfoDto? info;
  @override
  final String? type;

  factory _$$BdayaBLCIRMStatePeopleCreatePersonDto(
          [void Function($BdayaBLCIRMStatePeopleCreatePersonDtoBuilder)?
              updates]) =>
      (new $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder()..update(updates))
          ._build();

  _$$BdayaBLCIRMStatePeopleCreatePersonDto._({this.info, this.type})
      : super._();

  @override
  $BdayaBLCIRMStatePeopleCreatePersonDto rebuild(
          void Function($BdayaBLCIRMStatePeopleCreatePersonDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder toBuilder() =>
      new $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $BdayaBLCIRMStatePeopleCreatePersonDto &&
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
            r'$BdayaBLCIRMStatePeopleCreatePersonDto')
          ..add('info', info)
          ..add('type', type))
        .toString();
  }
}

class $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder
    implements
        Builder<$BdayaBLCIRMStatePeopleCreatePersonDto,
            $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder>,
        BdayaBLCIRMStatePeopleCreatePersonDtoBuilder {
  _$$BdayaBLCIRMStatePeopleCreatePersonDto? _$v;

  BdayaBLCIRMStatePersonInfoDtoBuilder? _info;
  BdayaBLCIRMStatePersonInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMStatePersonInfoDtoBuilder();
  set info(covariant BdayaBLCIRMStatePersonInfoDtoBuilder? info) =>
      _$this._info = info;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder() {
    $BdayaBLCIRMStatePeopleCreatePersonDto._defaults(this);
  }

  $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _info = $v.info?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $BdayaBLCIRMStatePeopleCreatePersonDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$BdayaBLCIRMStatePeopleCreatePersonDto;
  }

  @override
  void update(
      void Function($BdayaBLCIRMStatePeopleCreatePersonDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $BdayaBLCIRMStatePeopleCreatePersonDto build() => _build();

  _$$BdayaBLCIRMStatePeopleCreatePersonDto _build() {
    _$$BdayaBLCIRMStatePeopleCreatePersonDto _$result;
    try {
      _$result = _$v ??
          new _$$BdayaBLCIRMStatePeopleCreatePersonDto._(
              info: _info?.build(), type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$BdayaBLCIRMStatePeopleCreatePersonDto',
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
