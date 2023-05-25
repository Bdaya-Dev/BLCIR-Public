//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_management_tenant_dto.g.dart';

/// TenantManagementTenantDto
///
/// Properties:
/// * [extraProperties]
/// * [id]
/// * [name]
/// * [concurrencyStamp]
@BuiltValue()
abstract class TenantManagementTenantDto
    implements
        Built<TenantManagementTenantDto, TenantManagementTenantDtoBuilder> {
  @BuiltValueField(wireName: r'ExtraProperties')
  BuiltMap<String, JsonObject?>? get extraProperties;

  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'ConcurrencyStamp')
  String? get concurrencyStamp;

  TenantManagementTenantDto._();

  factory TenantManagementTenantDto(
          [void updates(TenantManagementTenantDtoBuilder b)]) =
      _$TenantManagementTenantDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantManagementTenantDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantManagementTenantDto> get serializer =>
      _$TenantManagementTenantDtoSerializer();
}

class _$TenantManagementTenantDtoSerializer
    implements PrimitiveSerializer<TenantManagementTenantDto> {
  @override
  final Iterable<Type> types = const [
    TenantManagementTenantDto,
    _$TenantManagementTenantDto
  ];

  @override
  final String wireName = r'TenantManagementTenantDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantManagementTenantDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.extraProperties != null) {
      yield r'ExtraProperties';
      yield serializers.serialize(
        object.extraProperties,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.id != null) {
      yield r'Id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.concurrencyStamp != null) {
      yield r'ConcurrencyStamp';
      yield serializers.serialize(
        object.concurrencyStamp,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantManagementTenantDto object, {
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
    required TenantManagementTenantDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ExtraProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extraProperties.replace(valueDes);
          break;
        case r'Id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        case r'ConcurrencyStamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.concurrencyStamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantManagementTenantDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantManagementTenantDtoBuilder();
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
