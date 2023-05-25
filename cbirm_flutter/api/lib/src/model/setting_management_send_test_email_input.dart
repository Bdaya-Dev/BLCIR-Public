//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setting_management_send_test_email_input.g.dart';

/// SettingManagementSendTestEmailInput
///
/// Properties:
/// * [senderEmailAddress]
/// * [targetEmailAddress]
/// * [subject]
/// * [body]
@BuiltValue()
abstract class SettingManagementSendTestEmailInput
    implements
        Built<SettingManagementSendTestEmailInput,
            SettingManagementSendTestEmailInputBuilder> {
  @BuiltValueField(wireName: r'SenderEmailAddress')
  String get senderEmailAddress;

  @BuiltValueField(wireName: r'TargetEmailAddress')
  String get targetEmailAddress;

  @BuiltValueField(wireName: r'Subject')
  String get subject;

  @BuiltValueField(wireName: r'Body')
  String? get body;

  SettingManagementSendTestEmailInput._();

  factory SettingManagementSendTestEmailInput(
          [void updates(SettingManagementSendTestEmailInputBuilder b)]) =
      _$SettingManagementSendTestEmailInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingManagementSendTestEmailInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingManagementSendTestEmailInput> get serializer =>
      _$SettingManagementSendTestEmailInputSerializer();
}

class _$SettingManagementSendTestEmailInputSerializer
    implements PrimitiveSerializer<SettingManagementSendTestEmailInput> {
  @override
  final Iterable<Type> types = const [
    SettingManagementSendTestEmailInput,
    _$SettingManagementSendTestEmailInput
  ];

  @override
  final String wireName = r'SettingManagementSendTestEmailInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingManagementSendTestEmailInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'SenderEmailAddress';
    yield serializers.serialize(
      object.senderEmailAddress,
      specifiedType: const FullType(String),
    );
    yield r'TargetEmailAddress';
    yield serializers.serialize(
      object.targetEmailAddress,
      specifiedType: const FullType(String),
    );
    yield r'Subject';
    yield serializers.serialize(
      object.subject,
      specifiedType: const FullType(String),
    );
    if (object.body != null) {
      yield r'Body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingManagementSendTestEmailInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SettingManagementSendTestEmailInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'SenderEmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.senderEmailAddress = valueDes;
          break;
        case r'TargetEmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetEmailAddress = valueDes;
          break;
        case r'Subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'Body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingManagementSendTestEmailInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingManagementSendTestEmailInputBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
