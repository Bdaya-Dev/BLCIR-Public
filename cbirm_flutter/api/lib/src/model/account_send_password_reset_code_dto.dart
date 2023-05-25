//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_send_password_reset_code_dto.g.dart';

/// AccountSendPasswordResetCodeDto
///
/// Properties:
/// * [email]
/// * [appName]
/// * [returnUrl]
/// * [returnUrlHash]
@BuiltValue()
abstract class AccountSendPasswordResetCodeDto
    implements
        Built<AccountSendPasswordResetCodeDto,
            AccountSendPasswordResetCodeDtoBuilder> {
  @BuiltValueField(wireName: r'Email')
  String get email;

  @BuiltValueField(wireName: r'AppName')
  String get appName;

  @BuiltValueField(wireName: r'ReturnUrl')
  String? get returnUrl;

  @BuiltValueField(wireName: r'ReturnUrlHash')
  String? get returnUrlHash;

  AccountSendPasswordResetCodeDto._();

  factory AccountSendPasswordResetCodeDto(
          [void updates(AccountSendPasswordResetCodeDtoBuilder b)]) =
      _$AccountSendPasswordResetCodeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountSendPasswordResetCodeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountSendPasswordResetCodeDto> get serializer =>
      _$AccountSendPasswordResetCodeDtoSerializer();
}

class _$AccountSendPasswordResetCodeDtoSerializer
    implements PrimitiveSerializer<AccountSendPasswordResetCodeDto> {
  @override
  final Iterable<Type> types = const [
    AccountSendPasswordResetCodeDto,
    _$AccountSendPasswordResetCodeDto
  ];

  @override
  final String wireName = r'AccountSendPasswordResetCodeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountSendPasswordResetCodeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'Email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'AppName';
    yield serializers.serialize(
      object.appName,
      specifiedType: const FullType(String),
    );
    if (object.returnUrl != null) {
      yield r'ReturnUrl';
      yield serializers.serialize(
        object.returnUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.returnUrlHash != null) {
      yield r'ReturnUrlHash';
      yield serializers.serialize(
        object.returnUrlHash,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountSendPasswordResetCodeDto object, {
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
    required AccountSendPasswordResetCodeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'AppName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appName = valueDes;
          break;
        case r'ReturnUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.returnUrl = valueDes;
          break;
        case r'ReturnUrlHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.returnUrlHash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountSendPasswordResetCodeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountSendPasswordResetCodeDtoBuilder();
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
