// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_date_time_format_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsDateTimeFormatDto
    extends ApplicationConfigurationsDateTimeFormatDto {
  @override
  final String? calendarAlgorithmType;
  @override
  final String? dateTimeFormatLong;
  @override
  final String? shortDatePattern;
  @override
  final String? fullDateTimePattern;
  @override
  final String? dateSeparator;
  @override
  final String? shortTimePattern;
  @override
  final String? longTimePattern;

  factory _$ApplicationConfigurationsDateTimeFormatDto(
          [void Function(ApplicationConfigurationsDateTimeFormatDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsDateTimeFormatDtoBuilder()..update(updates))
          ._build();

  _$ApplicationConfigurationsDateTimeFormatDto._(
      {this.calendarAlgorithmType,
      this.dateTimeFormatLong,
      this.shortDatePattern,
      this.fullDateTimePattern,
      this.dateSeparator,
      this.shortTimePattern,
      this.longTimePattern})
      : super._();

  @override
  ApplicationConfigurationsDateTimeFormatDto rebuild(
          void Function(ApplicationConfigurationsDateTimeFormatDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsDateTimeFormatDtoBuilder toBuilder() =>
      new ApplicationConfigurationsDateTimeFormatDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsDateTimeFormatDto &&
        calendarAlgorithmType == other.calendarAlgorithmType &&
        dateTimeFormatLong == other.dateTimeFormatLong &&
        shortDatePattern == other.shortDatePattern &&
        fullDateTimePattern == other.fullDateTimePattern &&
        dateSeparator == other.dateSeparator &&
        shortTimePattern == other.shortTimePattern &&
        longTimePattern == other.longTimePattern;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, calendarAlgorithmType.hashCode);
    _$hash = $jc(_$hash, dateTimeFormatLong.hashCode);
    _$hash = $jc(_$hash, shortDatePattern.hashCode);
    _$hash = $jc(_$hash, fullDateTimePattern.hashCode);
    _$hash = $jc(_$hash, dateSeparator.hashCode);
    _$hash = $jc(_$hash, shortTimePattern.hashCode);
    _$hash = $jc(_$hash, longTimePattern.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsDateTimeFormatDto')
          ..add('calendarAlgorithmType', calendarAlgorithmType)
          ..add('dateTimeFormatLong', dateTimeFormatLong)
          ..add('shortDatePattern', shortDatePattern)
          ..add('fullDateTimePattern', fullDateTimePattern)
          ..add('dateSeparator', dateSeparator)
          ..add('shortTimePattern', shortTimePattern)
          ..add('longTimePattern', longTimePattern))
        .toString();
  }
}

class ApplicationConfigurationsDateTimeFormatDtoBuilder
    implements
        Builder<ApplicationConfigurationsDateTimeFormatDto,
            ApplicationConfigurationsDateTimeFormatDtoBuilder> {
  _$ApplicationConfigurationsDateTimeFormatDto? _$v;

  String? _calendarAlgorithmType;
  String? get calendarAlgorithmType => _$this._calendarAlgorithmType;
  set calendarAlgorithmType(String? calendarAlgorithmType) =>
      _$this._calendarAlgorithmType = calendarAlgorithmType;

  String? _dateTimeFormatLong;
  String? get dateTimeFormatLong => _$this._dateTimeFormatLong;
  set dateTimeFormatLong(String? dateTimeFormatLong) =>
      _$this._dateTimeFormatLong = dateTimeFormatLong;

  String? _shortDatePattern;
  String? get shortDatePattern => _$this._shortDatePattern;
  set shortDatePattern(String? shortDatePattern) =>
      _$this._shortDatePattern = shortDatePattern;

  String? _fullDateTimePattern;
  String? get fullDateTimePattern => _$this._fullDateTimePattern;
  set fullDateTimePattern(String? fullDateTimePattern) =>
      _$this._fullDateTimePattern = fullDateTimePattern;

  String? _dateSeparator;
  String? get dateSeparator => _$this._dateSeparator;
  set dateSeparator(String? dateSeparator) =>
      _$this._dateSeparator = dateSeparator;

  String? _shortTimePattern;
  String? get shortTimePattern => _$this._shortTimePattern;
  set shortTimePattern(String? shortTimePattern) =>
      _$this._shortTimePattern = shortTimePattern;

  String? _longTimePattern;
  String? get longTimePattern => _$this._longTimePattern;
  set longTimePattern(String? longTimePattern) =>
      _$this._longTimePattern = longTimePattern;

  ApplicationConfigurationsDateTimeFormatDtoBuilder() {
    ApplicationConfigurationsDateTimeFormatDto._defaults(this);
  }

  ApplicationConfigurationsDateTimeFormatDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calendarAlgorithmType = $v.calendarAlgorithmType;
      _dateTimeFormatLong = $v.dateTimeFormatLong;
      _shortDatePattern = $v.shortDatePattern;
      _fullDateTimePattern = $v.fullDateTimePattern;
      _dateSeparator = $v.dateSeparator;
      _shortTimePattern = $v.shortTimePattern;
      _longTimePattern = $v.longTimePattern;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsDateTimeFormatDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsDateTimeFormatDto;
  }

  @override
  void update(
      void Function(ApplicationConfigurationsDateTimeFormatDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsDateTimeFormatDto build() => _build();

  _$ApplicationConfigurationsDateTimeFormatDto _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsDateTimeFormatDto._(
            calendarAlgorithmType: calendarAlgorithmType,
            dateTimeFormatLong: dateTimeFormatLong,
            shortDatePattern: shortDatePattern,
            fullDateTimePattern: fullDateTimePattern,
            dateSeparator: dateSeparator,
            shortTimePattern: shortTimePattern,
            longTimePattern: longTimePattern);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
