// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_windows_time_zone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsWindowsTimeZone
    extends ApplicationConfigurationsWindowsTimeZone {
  @override
  final String? timeZoneId;

  factory _$ApplicationConfigurationsWindowsTimeZone(
          [void Function(ApplicationConfigurationsWindowsTimeZoneBuilder)?
              updates]) =>
      (new ApplicationConfigurationsWindowsTimeZoneBuilder()..update(updates))
          ._build();

  _$ApplicationConfigurationsWindowsTimeZone._({this.timeZoneId}) : super._();

  @override
  ApplicationConfigurationsWindowsTimeZone rebuild(
          void Function(ApplicationConfigurationsWindowsTimeZoneBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsWindowsTimeZoneBuilder toBuilder() =>
      new ApplicationConfigurationsWindowsTimeZoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsWindowsTimeZone &&
        timeZoneId == other.timeZoneId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeZoneId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsWindowsTimeZone')
          ..add('timeZoneId', timeZoneId))
        .toString();
  }
}

class ApplicationConfigurationsWindowsTimeZoneBuilder
    implements
        Builder<ApplicationConfigurationsWindowsTimeZone,
            ApplicationConfigurationsWindowsTimeZoneBuilder> {
  _$ApplicationConfigurationsWindowsTimeZone? _$v;

  String? _timeZoneId;
  String? get timeZoneId => _$this._timeZoneId;
  set timeZoneId(String? timeZoneId) => _$this._timeZoneId = timeZoneId;

  ApplicationConfigurationsWindowsTimeZoneBuilder() {
    ApplicationConfigurationsWindowsTimeZone._defaults(this);
  }

  ApplicationConfigurationsWindowsTimeZoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeZoneId = $v.timeZoneId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsWindowsTimeZone other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsWindowsTimeZone;
  }

  @override
  void update(
      void Function(ApplicationConfigurationsWindowsTimeZoneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsWindowsTimeZone build() => _build();

  _$ApplicationConfigurationsWindowsTimeZone _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsWindowsTimeZone._(
            timeZoneId: timeZoneId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
