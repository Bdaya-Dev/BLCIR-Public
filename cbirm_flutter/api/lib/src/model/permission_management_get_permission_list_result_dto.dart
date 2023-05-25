//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/permission_management_permission_group_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_management_get_permission_list_result_dto.g.dart';

/// PermissionManagementGetPermissionListResultDto
///
/// Properties:
/// * [entityDisplayName]
/// * [groups]
@BuiltValue()
abstract class PermissionManagementGetPermissionListResultDto
    implements
        Built<PermissionManagementGetPermissionListResultDto,
            PermissionManagementGetPermissionListResultDtoBuilder> {
  @BuiltValueField(wireName: r'EntityDisplayName')
  String? get entityDisplayName;

  @BuiltValueField(wireName: r'Groups')
  BuiltList<PermissionManagementPermissionGroupDto>? get groups;

  PermissionManagementGetPermissionListResultDto._();

  factory PermissionManagementGetPermissionListResultDto(
          [void updates(
              PermissionManagementGetPermissionListResultDtoBuilder b)]) =
      _$PermissionManagementGetPermissionListResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          PermissionManagementGetPermissionListResultDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionManagementGetPermissionListResultDto>
      get serializer =>
          _$PermissionManagementGetPermissionListResultDtoSerializer();
}

class _$PermissionManagementGetPermissionListResultDtoSerializer
    implements
        PrimitiveSerializer<PermissionManagementGetPermissionListResultDto> {
  @override
  final Iterable<Type> types = const [
    PermissionManagementGetPermissionListResultDto,
    _$PermissionManagementGetPermissionListResultDto
  ];

  @override
  final String wireName = r'PermissionManagementGetPermissionListResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionManagementGetPermissionListResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityDisplayName != null) {
      yield r'EntityDisplayName';
      yield serializers.serialize(
        object.entityDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.groups != null) {
      yield r'Groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(PermissionManagementPermissionGroupDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionManagementGetPermissionListResultDto object, {
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
    required PermissionManagementGetPermissionListResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'EntityDisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityDisplayName = valueDes;
          break;
        case r'Groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(PermissionManagementPermissionGroupDto)]),
          ) as BuiltList<PermissionManagementPermissionGroupDto>?;
          if (valueDes == null) continue;
          result.groups.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionManagementGetPermissionListResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionManagementGetPermissionListResultDtoBuilder();
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
