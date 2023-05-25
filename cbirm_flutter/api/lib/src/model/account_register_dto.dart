//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_register_dto.g.dart';

/// AccountRegisterDto
///
/// Properties:
/// * [extraProperties]
/// * [userName]
/// * [emailAddress]
/// * [password]
/// * [appName]
@BuiltValue()
abstract class AccountRegisterDto
    implements Built<AccountRegisterDto, AccountRegisterDtoBuilder> {
  @BuiltValueField(wireName: r'ExtraProperties')
  BuiltMap<String, JsonObject?>? get extraProperties;

  @BuiltValueField(wireName: r'UserName')
  String get userName;

  @BuiltValueField(wireName: r'EmailAddress')
  String get emailAddress;

  @BuiltValueField(wireName: r'Password')
  String get password;

  @BuiltValueField(wireName: r'AppName')
  String get appName;

  AccountRegisterDto._();

  factory AccountRegisterDto([void updates(AccountRegisterDtoBuilder b)]) =
      _$AccountRegisterDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountRegisterDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountRegisterDto> get serializer =>
      _$AccountRegisterDtoSerializer();
}

class _$AccountRegisterDtoSerializer
    implements PrimitiveSerializer<AccountRegisterDto> {
  @override
  final Iterable<Type> types = const [AccountRegisterDto, _$AccountRegisterDto];

  @override
  final String wireName = r'AccountRegisterDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountRegisterDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.extraProperties != null) {
      yield r'ExtraProperties';
      yield serializers.serialize(
        object.extraProperties,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'UserName';
    yield serializers.serialize(
      object.userName,
      specifiedType: const FullType(String),
    );
    yield r'EmailAddress';
    yield serializers.serialize(
      object.emailAddress,
      specifiedType: const FullType(String),
    );
    yield r'Password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'AppName';
    yield serializers.serialize(
      object.appName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountRegisterDto object, {
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
    required AccountRegisterDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ExtraProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extraProperties.replace(valueDes);
          break;
        case r'UserName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userName = valueDes;
          break;
        case r'EmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emailAddress = valueDes;
          break;
        case r'Password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'AppName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountRegisterDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountRegisterDtoBuilder();
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
