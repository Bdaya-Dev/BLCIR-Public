// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_iana_time_zone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsIanaTimeZone
    extends ApplicationConfigurationsIanaTimeZone {
  @override
  final String? timeZoneName;

  factory _$ApplicationConfigurationsIanaTimeZone(
          [void Function(ApplicationConfigurationsIanaTimeZoneBuilder)?
              updates]) =>
      (new ApplicationConfigurationsIanaTimeZoneBuilder()..update(updates))
          ._build();

  _$ApplicationConfigurationsIanaTimeZone._({this.timeZoneName}) : super._();

  @override
  ApplicationConfigurationsIanaTimeZone rebuild(
          void Function(ApplicationConfigurationsIanaTimeZoneBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsIanaTimeZoneBuilder toBuilder() =>
      new ApplicationConfigurationsIanaTimeZoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsIanaTimeZone &&
        timeZoneName == other.timeZoneName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeZoneName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsIanaTimeZone')
          ..add('timeZoneName', timeZoneName))
        .toString();
  }
}

class ApplicationConfigurationsIanaTimeZoneBuilder
    implements
        Builder<ApplicationConfigurationsIanaTimeZone,
            ApplicationConfigurationsIanaTimeZoneBuilder> {
  _$ApplicationConfigurationsIanaTimeZone? _$v;

  String? _timeZoneName;
  String? get timeZoneName => _$this._timeZoneName;
  set timeZoneName(String? timeZoneName) => _$this._timeZoneName = timeZoneName;

  ApplicationConfigurationsIanaTimeZoneBuilder() {
    ApplicationConfigurationsIanaTimeZone._defaults(this);
  }

  ApplicationConfigurationsIanaTimeZoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeZoneName = $v.timeZoneName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsIanaTimeZone other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsIanaTimeZone;
  }

  @override
  void update(
      void Function(ApplicationConfigurationsIanaTimeZoneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsIanaTimeZone build() => _build();

  _$ApplicationConfigurationsIanaTimeZone _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsIanaTimeZone._(
            timeZoneName: timeZoneName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
