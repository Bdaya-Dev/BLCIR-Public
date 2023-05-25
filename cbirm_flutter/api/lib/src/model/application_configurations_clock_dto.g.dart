// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_clock_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsClockDto
    extends ApplicationConfigurationsClockDto {
  @override
  final String? kind;

  factory _$ApplicationConfigurationsClockDto(
          [void Function(ApplicationConfigurationsClockDtoBuilder)? updates]) =>
      (new ApplicationConfigurationsClockDtoBuilder()..update(updates))
          ._build();

  _$ApplicationConfigurationsClockDto._({this.kind}) : super._();

  @override
  ApplicationConfigurationsClockDto rebuild(
          void Function(ApplicationConfigurationsClockDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsClockDtoBuilder toBuilder() =>
      new ApplicationConfigurationsClockDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsClockDto && kind == other.kind;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationConfigurationsClockDto')
          ..add('kind', kind))
        .toString();
  }
}

class ApplicationConfigurationsClockDtoBuilder
    implements
        Builder<ApplicationConfigurationsClockDto,
            ApplicationConfigurationsClockDtoBuilder> {
  _$ApplicationConfigurationsClockDto? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  ApplicationConfigurationsClockDtoBuilder() {
    ApplicationConfigurationsClockDto._defaults(this);
  }

  ApplicationConfigurationsClockDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsClockDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsClockDto;
  }

  @override
  void update(
      void Function(ApplicationConfigurationsClockDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsClockDto build() => _build();

  _$ApplicationConfigurationsClockDto _build() {
    final _$result =
        _$v ?? new _$ApplicationConfigurationsClockDto._(kind: kind);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
