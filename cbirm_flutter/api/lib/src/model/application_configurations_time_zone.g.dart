// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_time_zone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsTimeZone
    extends ApplicationConfigurationsTimeZone {
  @override
  final ApplicationConfigurationsIanaTimeZone? iana;
  @override
  final ApplicationConfigurationsWindowsTimeZone? windows;

  factory _$ApplicationConfigurationsTimeZone(
          [void Function(ApplicationConfigurationsTimeZoneBuilder)? updates]) =>
      (new ApplicationConfigurationsTimeZoneBuilder()..update(updates))
          ._build();

  _$ApplicationConfigurationsTimeZone._({this.iana, this.windows}) : super._();

  @override
  ApplicationConfigurationsTimeZone rebuild(
          void Function(ApplicationConfigurationsTimeZoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsTimeZoneBuilder toBuilder() =>
      new ApplicationConfigurationsTimeZoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsTimeZone &&
        iana == other.iana &&
        windows == other.windows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iana.hashCode);
    _$hash = $jc(_$hash, windows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationConfigurationsTimeZone')
          ..add('iana', iana)
          ..add('windows', windows))
        .toString();
  }
}

class ApplicationConfigurationsTimeZoneBuilder
    implements
        Builder<ApplicationConfigurationsTimeZone,
            ApplicationConfigurationsTimeZoneBuilder> {
  _$ApplicationConfigurationsTimeZone? _$v;

  ApplicationConfigurationsIanaTimeZoneBuilder? _iana;
  ApplicationConfigurationsIanaTimeZoneBuilder get iana =>
      _$this._iana ??= new ApplicationConfigurationsIanaTimeZoneBuilder();
  set iana(ApplicationConfigurationsIanaTimeZoneBuilder? iana) =>
      _$this._iana = iana;

  ApplicationConfigurationsWindowsTimeZoneBuilder? _windows;
  ApplicationConfigurationsWindowsTimeZoneBuilder get windows =>
      _$this._windows ??= new ApplicationConfigurationsWindowsTimeZoneBuilder();
  set windows(ApplicationConfigurationsWindowsTimeZoneBuilder? windows) =>
      _$this._windows = windows;

  ApplicationConfigurationsTimeZoneBuilder() {
    ApplicationConfigurationsTimeZone._defaults(this);
  }

  ApplicationConfigurationsTimeZoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iana = $v.iana?.toBuilder();
      _windows = $v.windows?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsTimeZone other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsTimeZone;
  }

  @override
  void update(
      void Function(ApplicationConfigurationsTimeZoneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsTimeZone build() => _build();

  _$ApplicationConfigurationsTimeZone _build() {
    _$ApplicationConfigurationsTimeZone _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsTimeZone._(
              iana: _iana?.build(), windows: _windows?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iana';
        _iana?.build();
        _$failedField = 'windows';
        _windows?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsTimeZone', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
