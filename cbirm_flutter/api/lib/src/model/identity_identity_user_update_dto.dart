//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/identity_identity_user_create_or_update_dto_base.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_identity_user_update_dto.g.dart';

/// IdentityIdentityUserUpdateDto
///
/// Properties:
/// * [password]
/// * [concurrencyStamp]
/// * [extraProperties]
/// * [userName]
/// * [name]
/// * [surname]
/// * [email]
/// * [phoneNumber]
/// * [isActive]
/// * [lockoutEnabled]
/// * [roleNames]
@BuiltValue()
abstract class IdentityIdentityUserUpdateDto
    implements
        IdentityIdentityUserCreateOrUpdateDtoBase,
        Built<IdentityIdentityUserUpdateDto,
            IdentityIdentityUserUpdateDtoBuilder> {
  @BuiltValueField(wireName: r'Password')
  String? get password;

  @BuiltValueField(wireName: r'ConcurrencyStamp')
  String? get concurrencyStamp;

  IdentityIdentityUserUpdateDto._();

  factory IdentityIdentityUserUpdateDto(
          [void updates(IdentityIdentityUserUpdateDtoBuilder b)]) =
      _$IdentityIdentityUserUpdateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentityIdentityUserUpdateDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityIdentityUserUpdateDto> get serializer =>
      _$IdentityIdentityUserUpdateDtoSerializer();
}

class _$IdentityIdentityUserUpdateDtoSerializer
    implements PrimitiveSerializer<IdentityIdentityUserUpdateDto> {
  @override
  final Iterable<Type> types = const [
    IdentityIdentityUserUpdateDto,
    _$IdentityIdentityUserUpdateDto
  ];

  @override
  final String wireName = r'IdentityIdentityUserUpdateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityIdentityUserUpdateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.password != null) {
      yield r'Password';
      yield serializers.serialize(
        object.password,
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
    if (object.surname != null) {
      yield r'Surname';
      yield serializers.serialize(
        object.surname,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lockoutEnabled != null) {
      yield r'LockoutEnabled';
      yield serializers.serialize(
        object.lockoutEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.extraProperties != null) {
      yield r'ExtraProperties';
      yield serializers.serialize(
        object.extraProperties,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.concurrencyStamp != null) {
      yield r'ConcurrencyStamp';
      yield serializers.serialize(
        object.concurrencyStamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'UserName';
    yield serializers.serialize(
      object.userName,
      specifiedType: const FullType(String),
    );
    if (object.isActive != null) {
      yield r'IsActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.roleNames != null) {
      yield r'RoleNames';
      yield serializers.serialize(
        object.roleNames,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    yield r'Email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IdentityIdentityUserUpdateDto object, {
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
    required IdentityIdentityUserUpdateDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'PhoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'Surname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.surname = valueDes;
          break;
        case r'LockoutEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.lockoutEnabled = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'ExtraProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extraProperties.replace(valueDes);
          break;
        case r'ConcurrencyStamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.concurrencyStamp = valueDes;
          break;
        case r'UserName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userName = valueDes;
          break;
        case r'IsActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'RoleNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.roleNames.replace(valueDes);
          break;
        case r'Email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdentityIdentityUserUpdateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentityIdentityUserUpdateDtoBuilder();
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
