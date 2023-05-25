//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/permission_management_permission_grant_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_management_permission_group_dto.g.dart';

/// PermissionManagementPermissionGroupDto
///
/// Properties:
/// * [name]
/// * [displayName]
/// * [displayNameKey]
/// * [displayNameResource]
/// * [permissions]
@BuiltValue()
abstract class PermissionManagementPermissionGroupDto
    implements
        Built<PermissionManagementPermissionGroupDto,
            PermissionManagementPermissionGroupDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'DisplayName')
  String? get displayName;

  @BuiltValueField(wireName: r'DisplayNameKey')
  String? get displayNameKey;

  @BuiltValueField(wireName: r'DisplayNameResource')
  String? get displayNameResource;

  @BuiltValueField(wireName: r'Permissions')
  BuiltList<PermissionManagementPermissionGrantInfoDto>? get permissions;

  PermissionManagementPermissionGroupDto._();

  factory PermissionManagementPermissionGroupDto(
          [void updates(PermissionManagementPermissionGroupDtoBuilder b)]) =
      _$PermissionManagementPermissionGroupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionManagementPermissionGroupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionManagementPermissionGroupDto> get serializer =>
      _$PermissionManagementPermissionGroupDtoSerializer();
}

class _$PermissionManagementPermissionGroupDtoSerializer
    implements PrimitiveSerializer<PermissionManagementPermissionGroupDto> {
  @override
  final Iterable<Type> types = const [
    PermissionManagementPermissionGroupDto,
    _$PermissionManagementPermissionGroupDto
  ];

  @override
  final String wireName = r'PermissionManagementPermissionGroupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionManagementPermissionGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayName != null) {
      yield r'DisplayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayNameKey != null) {
      yield r'DisplayNameKey';
      yield serializers.serialize(
        object.displayNameKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayNameResource != null) {
      yield r'DisplayNameResource';
      yield serializers.serialize(
        object.displayNameResource,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.permissions != null) {
      yield r'Permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(PermissionManagementPermissionGrantInfoDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionManagementPermissionGroupDto object, {
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
    required PermissionManagementPermissionGroupDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'DisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'DisplayNameKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayNameKey = valueDes;
          break;
        case r'DisplayNameResource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayNameResource = valueDes;
          break;
        case r'Permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(PermissionManagementPermissionGrantInfoDto)]),
          ) as BuiltList<PermissionManagementPermissionGrantInfoDto>?;
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
  PermissionManagementPermissionGroupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionManagementPermissionGroupDtoBuilder();
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
