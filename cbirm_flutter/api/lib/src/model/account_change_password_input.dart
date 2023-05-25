//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_change_password_input.g.dart';

/// AccountChangePasswordInput
///
/// Properties:
/// * [currentPassword]
/// * [newPassword]
@BuiltValue()
abstract class AccountChangePasswordInput
    implements
        Built<AccountChangePasswordInput, AccountChangePasswordInputBuilder> {
  @BuiltValueField(wireName: r'CurrentPassword')
  String? get currentPassword;

  @BuiltValueField(wireName: r'NewPassword')
  String get newPassword;

  AccountChangePasswordInput._();

  factory AccountChangePasswordInput(
          [void updates(AccountChangePasswordInputBuilder b)]) =
      _$AccountChangePasswordInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountChangePasswordInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountChangePasswordInput> get serializer =>
      _$AccountChangePasswordInputSerializer();
}

class _$AccountChangePasswordInputSerializer
    implements PrimitiveSerializer<AccountChangePasswordInput> {
  @override
  final Iterable<Type> types = const [
    AccountChangePasswordInput,
    _$AccountChangePasswordInput
  ];

  @override
  final String wireName = r'AccountChangePasswordInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountChangePasswordInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currentPassword != null) {
      yield r'CurrentPassword';
      yield serializers.serialize(
        object.currentPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'NewPassword';
    yield serializers.serialize(
      object.newPassword,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountChangePasswordInput object, {
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
    required AccountChangePasswordInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'CurrentPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentPassword = valueDes;
          break;
        case r'NewPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountChangePasswordInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountChangePasswordInputBuilder();
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
