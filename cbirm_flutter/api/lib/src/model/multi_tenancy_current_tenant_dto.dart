//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multi_tenancy_current_tenant_dto.g.dart';

/// MultiTenancyCurrentTenantDto
///
/// Properties:
/// * [id]
/// * [name]
/// * [isAvailable]
@BuiltValue()
abstract class MultiTenancyCurrentTenantDto
    implements
        Built<MultiTenancyCurrentTenantDto,
            MultiTenancyCurrentTenantDtoBuilder> {
  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'IsAvailable')
  bool? get isAvailable;

  MultiTenancyCurrentTenantDto._();

  factory MultiTenancyCurrentTenantDto(
          [void updates(MultiTenancyCurrentTenantDtoBuilder b)]) =
      _$MultiTenancyCurrentTenantDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultiTenancyCurrentTenantDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MultiTenancyCurrentTenantDto> get serializer =>
      _$MultiTenancyCurrentTenantDtoSerializer();
}

class _$MultiTenancyCurrentTenantDtoSerializer
    implements PrimitiveSerializer<MultiTenancyCurrentTenantDto> {
  @override
  final Iterable<Type> types = const [
    MultiTenancyCurrentTenantDto,
    _$MultiTenancyCurrentTenantDto
  ];

  @override
  final String wireName = r'MultiTenancyCurrentTenantDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MultiTenancyCurrentTenantDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'Id';
      yield serializers.serialize(
        object.id,
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
    if (object.isAvailable != null) {
      yield r'IsAvailable';
      yield serializers.serialize(
        object.isAvailable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MultiTenancyCurrentTenantDto object, {
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
    required MultiTenancyCurrentTenantDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'IsAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAvailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MultiTenancyCurrentTenantDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultiTenancyCurrentTenantDtoBuilder();
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
