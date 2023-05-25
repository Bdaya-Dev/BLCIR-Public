//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_verify_password_reset_token_input.g.dart';

/// AccountVerifyPasswordResetTokenInput
///
/// Properties:
/// * [userId]
/// * [resetToken]
@BuiltValue()
abstract class AccountVerifyPasswordResetTokenInput
    implements
        Built<AccountVerifyPasswordResetTokenInput,
            AccountVerifyPasswordResetTokenInputBuilder> {
  @BuiltValueField(wireName: r'UserId')
  String? get userId;

  @BuiltValueField(wireName: r'ResetToken')
  String get resetToken;

  AccountVerifyPasswordResetTokenInput._();

  factory AccountVerifyPasswordResetTokenInput(
          [void updates(AccountVerifyPasswordResetTokenInputBuilder b)]) =
      _$AccountVerifyPasswordResetTokenInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountVerifyPasswordResetTokenInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountVerifyPasswordResetTokenInput> get serializer =>
      _$AccountVerifyPasswordResetTokenInputSerializer();
}

class _$AccountVerifyPasswordResetTokenInputSerializer
    implements PrimitiveSerializer<AccountVerifyPasswordResetTokenInput> {
  @override
  final Iterable<Type> types = const [
    AccountVerifyPasswordResetTokenInput,
    _$AccountVerifyPasswordResetTokenInput
  ];

  @override
  final String wireName = r'AccountVerifyPasswordResetTokenInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountVerifyPasswordResetTokenInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'UserId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    yield r'ResetToken';
    yield serializers.serialize(
      object.resetToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountVerifyPasswordResetTokenInput object, {
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
    required AccountVerifyPasswordResetTokenInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'UserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'ResetToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resetToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountVerifyPasswordResetTokenInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountVerifyPasswordResetTokenInputBuilder();
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
