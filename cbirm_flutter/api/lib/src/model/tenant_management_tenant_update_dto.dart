//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/tenant_management_tenant_create_or_update_dto_base.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_management_tenant_update_dto.g.dart';

/// TenantManagementTenantUpdateDto
///
/// Properties:
/// * [concurrencyStamp]
/// * [extraProperties]
/// * [name]
@BuiltValue()
abstract class TenantManagementTenantUpdateDto
    implements
        TenantManagementTenantCreateOrUpdateDtoBase,
        Built<TenantManagementTenantUpdateDto,
            TenantManagementTenantUpdateDtoBuilder> {
  @BuiltValueField(wireName: r'ConcurrencyStamp')
  String? get concurrencyStamp;

  TenantManagementTenantUpdateDto._();

  factory TenantManagementTenantUpdateDto(
          [void updates(TenantManagementTenantUpdateDtoBuilder b)]) =
      _$TenantManagementTenantUpdateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantManagementTenantUpdateDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantManagementTenantUpdateDto> get serializer =>
      _$TenantManagementTenantUpdateDtoSerializer();
}

class _$TenantManagementTenantUpdateDtoSerializer
    implements PrimitiveSerializer<TenantManagementTenantUpdateDto> {
  @override
  final Iterable<Type> types = const [
    TenantManagementTenantUpdateDto,
    _$TenantManagementTenantUpdateDto
  ];

  @override
  final String wireName = r'TenantManagementTenantUpdateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantManagementTenantUpdateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.concurrencyStamp != null) {
      yield r'ConcurrencyStamp';
      yield serializers.serialize(
        object.concurrencyStamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'Name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.extraProperties != null) {
      yield r'ExtraProperties';
      yield serializers.serialize(
        object.extraProperties,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantManagementTenantUpdateDto object, {
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
    required TenantManagementTenantUpdateDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ConcurrencyStamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.concurrencyStamp = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'ExtraProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extraProperties.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantManagementTenantUpdateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantManagementTenantUpdateDtoBuilder();
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
