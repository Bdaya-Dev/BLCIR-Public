//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/identity_identity_user_create_or_update_dto_base.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_identity_user_create_dto.g.dart';

/// IdentityIdentityUserCreateDto
///
/// Properties:
/// * [password]
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
abstract class IdentityIdentityUserCreateDto
    implements
        IdentityIdentityUserCreateOrUpdateDtoBase,
        Built<IdentityIdentityUserCreateDto,
            IdentityIdentityUserCreateDtoBuilder> {
  @BuiltValueField(wireName: r'Password')
  String get password;

  IdentityIdentityUserCreateDto._();

  factory IdentityIdentityUserCreateDto(
          [void updates(IdentityIdentityUserCreateDtoBuilder b)]) =
      _$IdentityIdentityUserCreateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentityIdentityUserCreateDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityIdentityUserCreateDto> get serializer =>
      _$IdentityIdentityUserCreateDtoSerializer();
}

class _$IdentityIdentityUserCreateDtoSerializer
    implements PrimitiveSerializer<IdentityIdentityUserCreateDto> {
  @override
  final Iterable<Type> types = const [
    IdentityIdentityUserCreateDto,
    _$IdentityIdentityUserCreateDto
  ];

  @override
  final String wireName = r'IdentityIdentityUserCreateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityIdentityUserCreateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'Password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
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
    IdentityIdentityUserCreateDto object, {
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
    required IdentityIdentityUserCreateDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  IdentityIdentityUserCreateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentityIdentityUserCreateDtoBuilder();
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
