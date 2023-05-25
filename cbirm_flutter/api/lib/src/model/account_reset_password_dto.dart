//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_reset_password_dto.g.dart';

/// AccountResetPasswordDto
///
/// Properties:
/// * [userId]
/// * [resetToken]
/// * [password]
@BuiltValue()
abstract class AccountResetPasswordDto
    implements Built<AccountResetPasswordDto, AccountResetPasswordDtoBuilder> {
  @BuiltValueField(wireName: r'UserId')
  String? get userId;

  @BuiltValueField(wireName: r'ResetToken')
  String get resetToken;

  @BuiltValueField(wireName: r'Password')
  String get password;

  AccountResetPasswordDto._();

  factory AccountResetPasswordDto(
          [void updates(AccountResetPasswordDtoBuilder b)]) =
      _$AccountResetPasswordDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountResetPasswordDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountResetPasswordDto> get serializer =>
      _$AccountResetPasswordDtoSerializer();
}

class _$AccountResetPasswordDtoSerializer
    implements PrimitiveSerializer<AccountResetPasswordDto> {
  @override
  final Iterable<Type> types = const [
    AccountResetPasswordDto,
    _$AccountResetPasswordDto
  ];

  @override
  final String wireName = r'AccountResetPasswordDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountResetPasswordDto object, {
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
    yield r'Password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountResetPasswordDto object, {
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
    required AccountResetPasswordDtoBuilder result,
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
        case r'Password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountResetPasswordDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountResetPasswordDtoBuilder();
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
