//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_identity_user_update_roles_dto.g.dart';

/// IdentityIdentityUserUpdateRolesDto
///
/// Properties:
/// * [roleNames]
@BuiltValue()
abstract class IdentityIdentityUserUpdateRolesDto
    implements
        Built<IdentityIdentityUserUpdateRolesDto,
            IdentityIdentityUserUpdateRolesDtoBuilder> {
  @BuiltValueField(wireName: r'RoleNames')
  BuiltList<String> get roleNames;

  IdentityIdentityUserUpdateRolesDto._();

  factory IdentityIdentityUserUpdateRolesDto(
          [void updates(IdentityIdentityUserUpdateRolesDtoBuilder b)]) =
      _$IdentityIdentityUserUpdateRolesDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentityIdentityUserUpdateRolesDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityIdentityUserUpdateRolesDto> get serializer =>
      _$IdentityIdentityUserUpdateRolesDtoSerializer();
}

class _$IdentityIdentityUserUpdateRolesDtoSerializer
    implements PrimitiveSerializer<IdentityIdentityUserUpdateRolesDto> {
  @override
  final Iterable<Type> types = const [
    IdentityIdentityUserUpdateRolesDto,
    _$IdentityIdentityUserUpdateRolesDto
  ];

  @override
  final String wireName = r'IdentityIdentityUserUpdateRolesDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityIdentityUserUpdateRolesDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'RoleNames';
    yield serializers.serialize(
      object.roleNames,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IdentityIdentityUserUpdateRolesDto object, {
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
    required IdentityIdentityUserUpdateRolesDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'RoleNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.roleNames.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdentityIdentityUserUpdateRolesDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentityIdentityUserUpdateRolesDtoBuilder();
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
