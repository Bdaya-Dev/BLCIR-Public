//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_current_user_dto.g.dart';

/// ApplicationConfigurationsCurrentUserDto
///
/// Properties:
/// * [isAuthenticated]
/// * [id]
/// * [tenantId]
/// * [impersonatorUserId]
/// * [impersonatorTenantId]
/// * [impersonatorUserName]
/// * [impersonatorTenantName]
/// * [userName]
/// * [name]
/// * [surName]
/// * [email]
/// * [emailVerified]
/// * [phoneNumber]
/// * [phoneNumberVerified]
/// * [roles]
@BuiltValue()
abstract class ApplicationConfigurationsCurrentUserDto
    implements
        Built<ApplicationConfigurationsCurrentUserDto,
            ApplicationConfigurationsCurrentUserDtoBuilder> {
  @BuiltValueField(wireName: r'IsAuthenticated')
  bool? get isAuthenticated;

  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'TenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'ImpersonatorUserId')
  String? get impersonatorUserId;

  @BuiltValueField(wireName: r'ImpersonatorTenantId')
  String? get impersonatorTenantId;

  @BuiltValueField(wireName: r'ImpersonatorUserName')
  String? get impersonatorUserName;

  @BuiltValueField(wireName: r'ImpersonatorTenantName')
  String? get impersonatorTenantName;

  @BuiltValueField(wireName: r'UserName')
  String? get userName;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'SurName')
  String? get surName;

  @BuiltValueField(wireName: r'Email')
  String? get email;

  @BuiltValueField(wireName: r'EmailVerified')
  bool? get emailVerified;

  @BuiltValueField(wireName: r'PhoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'PhoneNumberVerified')
  bool? get phoneNumberVerified;

  @BuiltValueField(wireName: r'Roles')
  BuiltList<String>? get roles;

  ApplicationConfigurationsCurrentUserDto._();

  factory ApplicationConfigurationsCurrentUserDto(
          [void updates(ApplicationConfigurationsCurrentUserDtoBuilder b)]) =
      _$ApplicationConfigurationsCurrentUserDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationConfigurationsCurrentUserDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsCurrentUserDto> get serializer =>
      _$ApplicationConfigurationsCurrentUserDtoSerializer();
}

class _$ApplicationConfigurationsCurrentUserDtoSerializer
    implements PrimitiveSerializer<ApplicationConfigurationsCurrentUserDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsCurrentUserDto,
    _$ApplicationConfigurationsCurrentUserDto
  ];

  @override
  final String wireName = r'ApplicationConfigurationsCurrentUserDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsCurrentUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isAuthenticated != null) {
      yield r'IsAuthenticated';
      yield serializers.serialize(
        object.isAuthenticated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.id != null) {
      yield r'Id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tenantId != null) {
      yield r'TenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.impersonatorUserId != null) {
      yield r'ImpersonatorUserId';
      yield serializers.serialize(
        object.impersonatorUserId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.impersonatorTenantId != null) {
      yield r'ImpersonatorTenantId';
      yield serializers.serialize(
        object.impersonatorTenantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.impersonatorUserName != null) {
      yield r'ImpersonatorUserName';
      yield serializers.serialize(
        object.impersonatorUserName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.impersonatorTenantName != null) {
      yield r'ImpersonatorTenantName';
      yield serializers.serialize(
        object.impersonatorTenantName,
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
    if (object.surName != null) {
      yield r'SurName';
      yield serializers.serialize(
        object.surName,
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
    if (object.emailVerified != null) {
      yield r'EmailVerified';
      yield serializers.serialize(
        object.emailVerified,
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
    if (object.phoneNumberVerified != null) {
      yield r'PhoneNumberVerified';
      yield serializers.serialize(
        object.phoneNumberVerified,
        specifiedType: const FullType(bool),
      );
    }
    if (object.roles != null) {
      yield r'Roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsCurrentUserDto object, {
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
    required ApplicationConfigurationsCurrentUserDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'IsAuthenticated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAuthenticated = valueDes;
          break;
        case r'Id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
        case r'ImpersonatorUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.impersonatorUserId = valueDes;
          break;
        case r'ImpersonatorTenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.impersonatorTenantId = valueDes;
          break;
        case r'ImpersonatorUserName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.impersonatorUserName = valueDes;
          break;
        case r'ImpersonatorTenantName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.impersonatorTenantName = valueDes;
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
        case r'SurName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.surName = valueDes;
          break;
        case r'Email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'EmailVerified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailVerified = valueDes;
          break;
        case r'PhoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'PhoneNumberVerified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.phoneNumberVerified = valueDes;
          break;
        case r'Roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsCurrentUserDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsCurrentUserDtoBuilder();
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
