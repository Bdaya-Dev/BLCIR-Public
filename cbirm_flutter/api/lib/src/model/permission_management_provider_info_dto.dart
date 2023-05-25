//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_management_provider_info_dto.g.dart';

/// PermissionManagementProviderInfoDto
///
/// Properties:
/// * [providerName]
/// * [providerKey]
@BuiltValue()
abstract class PermissionManagementProviderInfoDto
    implements
        Built<PermissionManagementProviderInfoDto,
            PermissionManagementProviderInfoDtoBuilder> {
  @BuiltValueField(wireName: r'ProviderName')
  String? get providerName;

  @BuiltValueField(wireName: r'ProviderKey')
  String? get providerKey;

  PermissionManagementProviderInfoDto._();

  factory PermissionManagementProviderInfoDto(
          [void updates(PermissionManagementProviderInfoDtoBuilder b)]) =
      _$PermissionManagementProviderInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionManagementProviderInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionManagementProviderInfoDto> get serializer =>
      _$PermissionManagementProviderInfoDtoSerializer();
}

class _$PermissionManagementProviderInfoDtoSerializer
    implements PrimitiveSerializer<PermissionManagementProviderInfoDto> {
  @override
  final Iterable<Type> types = const [
    PermissionManagementProviderInfoDto,
    _$PermissionManagementProviderInfoDto
  ];

  @override
  final String wireName = r'PermissionManagementProviderInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionManagementProviderInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.providerName != null) {
      yield r'ProviderName';
      yield serializers.serialize(
        object.providerName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.providerKey != null) {
      yield r'ProviderKey';
      yield serializers.serialize(
        object.providerKey,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionManagementProviderInfoDto object, {
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
    required PermissionManagementProviderInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ProviderName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.providerName = valueDes;
          break;
        case r'ProviderKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.providerKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionManagementProviderInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionManagementProviderInfoDtoBuilder();
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
