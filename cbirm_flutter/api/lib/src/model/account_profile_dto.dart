//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_profile_dto.g.dart';

/// AccountProfileDto
///
/// Properties:
/// * [extraProperties]
/// * [userName]
/// * [email]
/// * [name]
/// * [surname]
/// * [phoneNumber]
/// * [isExternal]
/// * [hasPassword]
/// * [concurrencyStamp]
@BuiltValue()
abstract class AccountProfileDto
    implements Built<AccountProfileDto, AccountProfileDtoBuilder> {
  @BuiltValueField(wireName: r'ExtraProperties')
  BuiltMap<String, JsonObject?>? get extraProperties;

  @BuiltValueField(wireName: r'UserName')
  String? get userName;

  @BuiltValueField(wireName: r'Email')
  String? get email;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Surname')
  String? get surname;

  @BuiltValueField(wireName: r'PhoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'IsExternal')
  bool? get isExternal;

  @BuiltValueField(wireName: r'HasPassword')
  bool? get hasPassword;

  @BuiltValueField(wireName: r'ConcurrencyStamp')
  String? get concurrencyStamp;

  AccountProfileDto._();

  factory AccountProfileDto([void updates(AccountProfileDtoBuilder b)]) =
      _$AccountProfileDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountProfileDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountProfileDto> get serializer =>
      _$AccountProfileDtoSerializer();
}

class _$AccountProfileDtoSerializer
    implements PrimitiveSerializer<AccountProfileDto> {
  @override
  final Iterable<Type> types = const [AccountProfileDto, _$AccountProfileDto];

  @override
  final String wireName = r'AccountProfileDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountProfileDto object, {
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
    if (object.userName != null) {
      yield r'UserName';
      yield serializers.serialize(
        object.userName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.email != null) {
      yield r'Email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.surname != null) {
      yield r'Surname';
      yield serializers.serialize(
        object.surname,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phoneNumber != null) {
      yield r'PhoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isExternal != null) {
      yield r'IsExternal';
      yield serializers.serialize(
        object.isExternal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasPassword != null) {
      yield r'HasPassword';
      yield serializers.serialize(
        object.hasPassword,
        specifiedType: const FullType(bool),
      );
    }
    if (object.concurrencyStamp != null) {
      yield r'ConcurrencyStamp';
      yield serializers.serialize(
        object.concurrencyStamp,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountProfileDto object, {
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
    required AccountProfileDtoBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userName = valueDes;
          break;
        case r'Email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'Surname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.surname = valueDes;
          break;
        case r'PhoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'IsExternal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExternal = valueDes;
          break;
        case r'HasPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPassword = valueDes;
          break;
        case r'ConcurrencyStamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.concurrencyStamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountProfileDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountProfileDtoBuilder();
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
