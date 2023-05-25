//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_user_data.g.dart';

/// UsersUserData
///
/// Properties:
/// * [id]
/// * [tenantId]
/// * [userName]
/// * [name]
/// * [surname]
/// * [isActive]
/// * [email]
/// * [emailConfirmed]
/// * [phoneNumber]
/// * [phoneNumberConfirmed]
@BuiltValue()
abstract class UsersUserData
    implements Built<UsersUserData, UsersUserDataBuilder> {
  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'TenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'UserName')
  String? get userName;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Surname')
  String? get surname;

  @BuiltValueField(wireName: r'IsActive')
  bool? get isActive;

  @BuiltValueField(wireName: r'Email')
  String? get email;

  @BuiltValueField(wireName: r'EmailConfirmed')
  bool? get emailConfirmed;

  @BuiltValueField(wireName: r'PhoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'PhoneNumberConfirmed')
  bool? get phoneNumberConfirmed;

  UsersUserData._();

  factory UsersUserData([void updates(UsersUserDataBuilder b)]) =
      _$UsersUserData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersUserDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersUserData> get serializer =>
      _$UsersUserDataSerializer();
}

class _$UsersUserDataSerializer implements PrimitiveSerializer<UsersUserData> {
  @override
  final Iterable<Type> types = const [UsersUserData, _$UsersUserData];

  @override
  final String wireName = r'UsersUserData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersUserData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'Id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.tenantId != null) {
      yield r'TenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userName != null) {
      yield r'UserName';
      yield serializers.serialize(
        object.userName,
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
    if (object.isActive != null) {
      yield r'IsActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.email != null) {
      yield r'Email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.emailConfirmed != null) {
      yield r'EmailConfirmed';
      yield serializers.serialize(
        object.emailConfirmed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.phoneNumber != null) {
      yield r'PhoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phoneNumberConfirmed != null) {
      yield r'PhoneNumberConfirmed';
      yield serializers.serialize(
        object.phoneNumberConfirmed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersUserData object, {
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
    required UsersUserDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'TenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantId = valueDes;
          break;
        case r'UserName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userName = valueDes;
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
        case r'IsActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'Email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'EmailConfirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailConfirmed = valueDes;
          break;
        case r'PhoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'PhoneNumberConfirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.phoneNumberConfirmed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersUserData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersUserDataBuilder();
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
