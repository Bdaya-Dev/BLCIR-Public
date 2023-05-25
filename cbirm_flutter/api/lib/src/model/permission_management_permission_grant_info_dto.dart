//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/permission_management_provider_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_management_permission_grant_info_dto.g.dart';

/// PermissionManagementPermissionGrantInfoDto
///
/// Properties:
/// * [name]
/// * [displayName]
/// * [parentName]
/// * [isGranted]
/// * [allowedProviders]
/// * [grantedProviders]
@BuiltValue()
abstract class PermissionManagementPermissionGrantInfoDto
    implements
        Built<PermissionManagementPermissionGrantInfoDto,
            PermissionManagementPermissionGrantInfoDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'DisplayName')
  String? get displayName;

  @BuiltValueField(wireName: r'ParentName')
  String? get parentName;

  @BuiltValueField(wireName: r'IsGranted')
  bool? get isGranted;

  @BuiltValueField(wireName: r'AllowedProviders')
  BuiltList<String>? get allowedProviders;

  @BuiltValueField(wireName: r'GrantedProviders')
  BuiltList<PermissionManagementProviderInfoDto>? get grantedProviders;

  PermissionManagementPermissionGrantInfoDto._();

  factory PermissionManagementPermissionGrantInfoDto(
          [void updates(PermissionManagementPermissionGrantInfoDtoBuilder b)]) =
      _$PermissionManagementPermissionGrantInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionManagementPermissionGrantInfoDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionManagementPermissionGrantInfoDto>
      get serializer =>
          _$PermissionManagementPermissionGrantInfoDtoSerializer();
}

class _$PermissionManagementPermissionGrantInfoDtoSerializer
    implements PrimitiveSerializer<PermissionManagementPermissionGrantInfoDto> {
  @override
  final Iterable<Type> types = const [
    PermissionManagementPermissionGrantInfoDto,
    _$PermissionManagementPermissionGrantInfoDto
  ];

  @override
  final String wireName = r'PermissionManagementPermissionGrantInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionManagementPermissionGrantInfoDto object, {
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
    if (object.parentName != null) {
      yield r'ParentName';
      yield serializers.serialize(
        object.parentName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isGranted != null) {
      yield r'IsGranted';
      yield serializers.serialize(
        object.isGranted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowedProviders != null) {
      yield r'AllowedProviders';
      yield serializers.serialize(
        object.allowedProviders,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.grantedProviders != null) {
      yield r'GrantedProviders';
      yield serializers.serialize(
        object.grantedProviders,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(PermissionManagementProviderInfoDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionManagementPermissionGrantInfoDto object, {
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
    required PermissionManagementPermissionGrantInfoDtoBuilder result,
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
        case r'ParentName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentName = valueDes;
          break;
        case r'IsGranted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isGranted = valueDes;
          break;
        case r'AllowedProviders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowedProviders.replace(valueDes);
          break;
        case r'GrantedProviders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(PermissionManagementProviderInfoDto)]),
          ) as BuiltList<PermissionManagementProviderInfoDto>?;
          if (valueDes == null) continue;
          result.grantedProviders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionManagementPermissionGrantInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionManagementPermissionGrantInfoDtoBuilder();
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
