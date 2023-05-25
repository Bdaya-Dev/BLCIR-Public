//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_management_update_permission_dto.g.dart';

/// PermissionManagementUpdatePermissionDto
///
/// Properties:
/// * [name]
/// * [isGranted]
@BuiltValue()
abstract class PermissionManagementUpdatePermissionDto
    implements
        Built<PermissionManagementUpdatePermissionDto,
            PermissionManagementUpdatePermissionDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'IsGranted')
  bool? get isGranted;

  PermissionManagementUpdatePermissionDto._();

  factory PermissionManagementUpdatePermissionDto(
          [void updates(PermissionManagementUpdatePermissionDtoBuilder b)]) =
      _$PermissionManagementUpdatePermissionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionManagementUpdatePermissionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionManagementUpdatePermissionDto> get serializer =>
      _$PermissionManagementUpdatePermissionDtoSerializer();
}

class _$PermissionManagementUpdatePermissionDtoSerializer
    implements PrimitiveSerializer<PermissionManagementUpdatePermissionDto> {
  @override
  final Iterable<Type> types = const [
    PermissionManagementUpdatePermissionDto,
    _$PermissionManagementUpdatePermissionDto
  ];

  @override
  final String wireName = r'PermissionManagementUpdatePermissionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionManagementUpdatePermissionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionManagementUpdatePermissionDto object, {
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
    required PermissionManagementUpdatePermissionDtoBuilder result,
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
        case r'IsGranted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isGranted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionManagementUpdatePermissionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionManagementUpdatePermissionDtoBuilder();
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
