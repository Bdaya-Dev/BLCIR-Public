// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_language_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalizationLanguageInfo extends LocalizationLanguageInfo {
  @override
  final String? cultureName;
  @override
  final String? uiCultureName;
  @override
  final String? displayName;
  @override
  final String? twoLetterISOLanguageName;
  @override
  final String? flagIcon;

  factory _$LocalizationLanguageInfo(
          [void Function(LocalizationLanguageInfoBuilder)? updates]) =>
      (new LocalizationLanguageInfoBuilder()..update(updates))._build();

  _$LocalizationLanguageInfo._(
      {this.cultureName,
      this.uiCultureName,
      this.displayName,
      this.twoLetterISOLanguageName,
      this.flagIcon})
      : super._();

  @override
  LocalizationLanguageInfo rebuild(
          void Function(LocalizationLanguageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalizationLanguageInfoBuilder toBuilder() =>
      new LocalizationLanguageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalizationLanguageInfo &&
        cultureName == other.cultureName &&
        uiCultureName == other.uiCultureName &&
        displayName == other.displayName &&
        twoLetterISOLanguageName == other.twoLetterISOLanguageName &&
        flagIcon == other.flagIcon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cultureName.hashCode);
    _$hash = $jc(_$hash, uiCultureName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, twoLetterISOLanguageName.hashCode);
    _$hash = $jc(_$hash, flagIcon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocalizationLanguageInfo')
          ..add('cultureName', cultureName)
          ..add('uiCultureName', uiCultureName)
          ..add('displayName', displayName)
          ..add('twoLetterISOLanguageName', twoLetterISOLanguageName)
          ..add('flagIcon', flagIcon))
        .toString();
  }
}

class LocalizationLanguageInfoBuilder
    implements
        Builder<LocalizationLanguageInfo, LocalizationLanguageInfoBuilder> {
  _$LocalizationLanguageInfo? _$v;

  String? _cultureName;
  String? get cultureName => _$this._cultureName;
  set cultureName(String? cultureName) => _$this._cultureName = cultureName;

  String? _uiCultureName;
  String? get uiCultureName => _$this._uiCultureName;
  set uiCultureName(String? uiCultureName) =>
      _$this._uiCultureName = uiCultureName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _twoLetterISOLanguageName;
  String? get twoLetterISOLanguageName => _$this._twoLetterISOLanguageName;
  set twoLetterISOLanguageName(String? twoLetterISOLanguageName) =>
      _$this._twoLetterISOLanguageName = twoLetterISOLanguageName;

  String? _flagIcon;
  String? get flagIcon => _$this._flagIcon;
  set flagIcon(String? flagIcon) => _$this._flagIcon = flagIcon;

  LocalizationLanguageInfoBuilder() {
    LocalizationLanguageInfo._defaults(this);
  }

  LocalizationLanguageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cultureName = $v.cultureName;
      _uiCultureName = $v.uiCultureName;
      _displayName = $v.displayName;
      _twoLetterISOLanguageName = $v.twoLetterISOLanguageName;
      _flagIcon = $v.flagIcon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalizationLanguageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalizationLanguageInfo;
  }

  @override
  void update(void Function(LocalizationLanguageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalizationLanguageInfo build() => _build();

  _$LocalizationLanguageInfo _build() {
    final _$result = _$v ??
        new _$LocalizationLanguageInfo._(
            cultureName: cultureName,
            uiCultureName: uiCultureName,
            displayName: displayName,
            twoLetterISOLanguageName: twoLetterISOLanguageName,
            flagIcon: flagIcon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
