//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multi_tenancy_find_tenant_result_dto.g.dart';

/// MultiTenancyFindTenantResultDto
///
/// Properties:
/// * [success]
/// * [tenantId]
/// * [name]
/// * [isActive]
@BuiltValue()
abstract class MultiTenancyFindTenantResultDto
    implements
        Built<MultiTenancyFindTenantResultDto,
            MultiTenancyFindTenantResultDtoBuilder> {
  @BuiltValueField(wireName: r'Success')
  bool? get success;

  @BuiltValueField(wireName: r'TenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'IsActive')
  bool? get isActive;

  MultiTenancyFindTenantResultDto._();

  factory MultiTenancyFindTenantResultDto(
          [void updates(MultiTenancyFindTenantResultDtoBuilder b)]) =
      _$MultiTenancyFindTenantResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultiTenancyFindTenantResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MultiTenancyFindTenantResultDto> get serializer =>
      _$MultiTenancyFindTenantResultDtoSerializer();
}

class _$MultiTenancyFindTenantResultDtoSerializer
    implements PrimitiveSerializer<MultiTenancyFindTenantResultDto> {
  @override
  final Iterable<Type> types = const [
    MultiTenancyFindTenantResultDto,
    _$MultiTenancyFindTenantResultDto
  ];

  @override
  final String wireName = r'MultiTenancyFindTenantResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MultiTenancyFindTenantResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'Success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tenantId != null) {
      yield r'TenantId';
      yield serializers.serialize(
        object.tenantId,
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
    if (object.isActive != null) {
      yield r'IsActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MultiTenancyFindTenantResultDto object, {
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
    required MultiTenancyFindTenantResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'TenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantId = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'IsActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MultiTenancyFindTenantResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultiTenancyFindTenantResultDtoBuilder();
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
