//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_management_tenant_create_or_update_dto_base.g.dart';

/// TenantManagementTenantCreateOrUpdateDtoBase
///
/// Properties:
/// * [extraProperties]
/// * [name]
@BuiltValue(instantiable: false)
abstract class TenantManagementTenantCreateOrUpdateDtoBase {
  @BuiltValueField(wireName: r'ExtraProperties')
  BuiltMap<String, JsonObject?>? get extraProperties;

  @BuiltValueField(wireName: r'Name')
  String get name;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantManagementTenantCreateOrUpdateDtoBase>
      get serializer =>
          _$TenantManagementTenantCreateOrUpdateDtoBaseSerializer();
}

class _$TenantManagementTenantCreateOrUpdateDtoBaseSerializer
    implements
        PrimitiveSerializer<TenantManagementTenantCreateOrUpdateDtoBase> {
  @override
  final Iterable<Type> types = const [
    TenantManagementTenantCreateOrUpdateDtoBase
  ];

  @override
  final String wireName = r'TenantManagementTenantCreateOrUpdateDtoBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantManagementTenantCreateOrUpdateDtoBase object, {
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
    yield r'Name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantManagementTenantCreateOrUpdateDtoBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  TenantManagementTenantCreateOrUpdateDtoBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType:
                FullType($TenantManagementTenantCreateOrUpdateDtoBase))
        as $TenantManagementTenantCreateOrUpdateDtoBase;
  }
}

/// a concrete implementation of [TenantManagementTenantCreateOrUpdateDtoBase], since [TenantManagementTenantCreateOrUpdateDtoBase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TenantManagementTenantCreateOrUpdateDtoBase
    implements
        TenantManagementTenantCreateOrUpdateDtoBase,
        Built<$TenantManagementTenantCreateOrUpdateDtoBase,
            $TenantManagementTenantCreateOrUpdateDtoBaseBuilder> {
  $TenantManagementTenantCreateOrUpdateDtoBase._();

  factory $TenantManagementTenantCreateOrUpdateDtoBase(
      [void Function($TenantManagementTenantCreateOrUpdateDtoBaseBuilder)?
          updates]) = _$$TenantManagementTenantCreateOrUpdateDtoBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          $TenantManagementTenantCreateOrUpdateDtoBaseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TenantManagementTenantCreateOrUpdateDtoBase>
      get serializer =>
          _$$TenantManagementTenantCreateOrUpdateDtoBaseSerializer();
}

class _$$TenantManagementTenantCreateOrUpdateDtoBaseSerializer
    implements
        PrimitiveSerializer<$TenantManagementTenantCreateOrUpdateDtoBase> {
  @override
  final Iterable<Type> types = const [
    $TenantManagementTenantCreateOrUpdateDtoBase,
    _$$TenantManagementTenantCreateOrUpdateDtoBase
  ];

  @override
  final String wireName = r'$TenantManagementTenantCreateOrUpdateDtoBase';

  @override
  Object serialize(
    Serializers serializers,
    $TenantManagementTenantCreateOrUpdateDtoBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(TenantManagementTenantCreateOrUpdateDtoBase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantManagementTenantCreateOrUpdateDtoBaseBuilder result,
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
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $TenantManagementTenantCreateOrUpdateDtoBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TenantManagementTenantCreateOrUpdateDtoBaseBuilder();
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
