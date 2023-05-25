// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_management_send_test_email_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingManagementSendTestEmailInput
    extends SettingManagementSendTestEmailInput {
  @override
  final String senderEmailAddress;
  @override
  final String targetEmailAddress;
  @override
  final String subject;
  @override
  final String? body;

  factory _$SettingManagementSendTestEmailInput(
          [void Function(SettingManagementSendTestEmailInputBuilder)?
              updates]) =>
      (new SettingManagementSendTestEmailInputBuilder()..update(updates))
          ._build();

  _$SettingManagementSendTestEmailInput._(
      {required this.senderEmailAddress,
      required this.targetEmailAddress,
      required this.subject,
      this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(senderEmailAddress,
        r'SettingManagementSendTestEmailInput', 'senderEmailAddress');
    BuiltValueNullFieldError.checkNotNull(targetEmailAddress,
        r'SettingManagementSendTestEmailInput', 'targetEmailAddress');
    BuiltValueNullFieldError.checkNotNull(
        subject, r'SettingManagementSendTestEmailInput', 'subject');
  }

  @override
  SettingManagementSendTestEmailInput rebuild(
          void Function(SettingManagementSendTestEmailInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingManagementSendTestEmailInputBuilder toBuilder() =>
      new SettingManagementSendTestEmailInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingManagementSendTestEmailInput &&
        senderEmailAddress == other.senderEmailAddress &&
        targetEmailAddress == other.targetEmailAddress &&
        subject == other.subject &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, senderEmailAddress.hashCode);
    _$hash = $jc(_$hash, targetEmailAddress.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingManagementSendTestEmailInput')
          ..add('senderEmailAddress', senderEmailAddress)
          ..add('targetEmailAddress', targetEmailAddress)
          ..add('subject', subject)
          ..add('body', body))
        .toString();
  }
}

class SettingManagementSendTestEmailInputBuilder
    implements
        Builder<SettingManagementSendTestEmailInput,
            SettingManagementSendTestEmailInputBuilder> {
  _$SettingManagementSendTestEmailInput? _$v;

  String? _senderEmailAddress;
  String? get senderEmailAddress => _$this._senderEmailAddress;
  set senderEmailAddress(String? senderEmailAddress) =>
      _$this._senderEmailAddress = senderEmailAddress;

  String? _targetEmailAddress;
  String? get targetEmailAddress => _$this._targetEmailAddress;
  set targetEmailAddress(String? targetEmailAddress) =>
      _$this._targetEmailAddress = targetEmailAddress;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  SettingManagementSendTestEmailInputBuilder() {
    SettingManagementSendTestEmailInput._defaults(this);
  }

  SettingManagementSendTestEmailInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _senderEmailAddress = $v.senderEmailAddress;
      _targetEmailAddress = $v.targetEmailAddress;
      _subject = $v.subject;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingManagementSendTestEmailInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingManagementSendTestEmailInput;
  }

  @override
  void update(
      void Function(SettingManagementSendTestEmailInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingManagementSendTestEmailInput build() => _build();

  _$SettingManagementSendTestEmailInput _build() {
    final _$result = _$v ??
        new _$SettingManagementSendTestEmailInput._(
            senderEmailAddress: BuiltValueNullFieldError.checkNotNull(
                senderEmailAddress,
                r'SettingManagementSendTestEmailInput',
                'senderEmailAddress'),
            targetEmailAddress: BuiltValueNullFieldError.checkNotNull(
                targetEmailAddress,
                r'SettingManagementSendTestEmailInput',
                'targetEmailAddress'),
            subject: BuiltValueNullFieldError.checkNotNull(
                subject, r'SettingManagementSendTestEmailInput', 'subject'),
            body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
