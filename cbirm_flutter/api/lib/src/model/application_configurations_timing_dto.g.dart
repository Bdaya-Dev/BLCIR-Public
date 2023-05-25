// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_timing_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsTimingDto
    extends ApplicationConfigurationsTimingDto {
  @override
  final ApplicationConfigurationsTimeZone? timeZone;

  factory _$ApplicationConfigurationsTimingDto(
          [void Function(ApplicationConfigurationsTimingDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsTimingDtoBuilder()..update(updates))
          ._build();

  _$ApplicationConfigurationsTimingDto._({this.timeZone}) : super._();

  @override
  ApplicationConfigurationsTimingDto rebuild(
          void Function(ApplicationConfigurationsTimingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsTimingDtoBuilder toBuilder() =>
      new ApplicationConfigurationsTimingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsTimingDto &&
        timeZone == other.timeZone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeZone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationConfigurationsTimingDto')
          ..add('timeZone', timeZone))
        .toString();
  }
}

class ApplicationConfigurationsTimingDtoBuilder
    implements
        Builder<ApplicationConfigurationsTimingDto,
            ApplicationConfigurationsTimingDtoBuilder> {
  _$ApplicationConfigurationsTimingDto? _$v;

  ApplicationConfigurationsTimeZoneBuilder? _timeZone;
  ApplicationConfigurationsTimeZoneBuilder get timeZone =>
      _$this._timeZone ??= new ApplicationConfigurationsTimeZoneBuilder();
  set timeZone(ApplicationConfigurationsTimeZoneBuilder? timeZone) =>
      _$this._timeZone = timeZone;

  ApplicationConfigurationsTimingDtoBuilder() {
    ApplicationConfigurationsTimingDto._defaults(this);
  }

  ApplicationConfigurationsTimingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeZone = $v.timeZone?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsTimingDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsTimingDto;
  }

  @override
  void update(
      void Function(ApplicationConfigurationsTimingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsTimingDto build() => _build();

  _$ApplicationConfigurationsTimingDto _build() {
    _$ApplicationConfigurationsTimingDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsTimingDto._(
              timeZone: _timeZone?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeZone';
        _timeZone?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsTimingDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
