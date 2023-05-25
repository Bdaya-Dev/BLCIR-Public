//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/permission_management_update_permission_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_management_update_permissions_dto.g.dart';

/// PermissionManagementUpdatePermissionsDto
///
/// Properties:
/// * [permissions]
@BuiltValue()
abstract class PermissionManagementUpdatePermissionsDto
    implements
        Built<PermissionManagementUpdatePermissionsDto,
            PermissionManagementUpdatePermissionsDtoBuilder> {
  @BuiltValueField(wireName: r'Permissions')
  BuiltList<PermissionManagementUpdatePermissionDto>? get permissions;

  PermissionManagementUpdatePermissionsDto._();

  factory PermissionManagementUpdatePermissionsDto(
          [void updates(PermissionManagementUpdatePermissionsDtoBuilder b)]) =
      _$PermissionManagementUpdatePermissionsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionManagementUpdatePermissionsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionManagementUpdatePermissionsDto> get serializer =>
      _$PermissionManagementUpdatePermissionsDtoSerializer();
}

class _$PermissionManagementUpdatePermissionsDtoSerializer
    implements PrimitiveSerializer<PermissionManagementUpdatePermissionsDto> {
  @override
  final Iterable<Type> types = const [
    PermissionManagementUpdatePermissionsDto,
    _$PermissionManagementUpdatePermissionsDto
  ];

  @override
  final String wireName = r'PermissionManagementUpdatePermissionsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionManagementUpdatePermissionsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.permissions != null) {
      yield r'Permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(PermissionManagementUpdatePermissionDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionManagementUpdatePermissionsDto object, {
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
    required PermissionManagementUpdatePermissionsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(PermissionManagementUpdatePermissionDto)]),
          ) as BuiltList<PermissionManagementUpdatePermissionDto>?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionManagementUpdatePermissionsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionManagementUpdatePermissionsDtoBuilder();
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
