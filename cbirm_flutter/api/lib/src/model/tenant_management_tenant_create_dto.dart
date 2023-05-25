//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/tenant_management_tenant_create_or_update_dto_base.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_management_tenant_create_dto.g.dart';

/// TenantManagementTenantCreateDto
///
/// Properties:
/// * [adminEmailAddress]
/// * [adminPassword]
/// * [extraProperties]
/// * [name]
@BuiltValue()
abstract class TenantManagementTenantCreateDto
    implements
        TenantManagementTenantCreateOrUpdateDtoBase,
        Built<TenantManagementTenantCreateDto,
            TenantManagementTenantCreateDtoBuilder> {
  @BuiltValueField(wireName: r'AdminEmailAddress')
  String get adminEmailAddress;

  @BuiltValueField(wireName: r'AdminPassword')
  String get adminPassword;

  TenantManagementTenantCreateDto._();

  factory TenantManagementTenantCreateDto(
          [void updates(TenantManagementTenantCreateDtoBuilder b)]) =
      _$TenantManagementTenantCreateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantManagementTenantCreateDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantManagementTenantCreateDto> get serializer =>
      _$TenantManagementTenantCreateDtoSerializer();
}

class _$TenantManagementTenantCreateDtoSerializer
    implements PrimitiveSerializer<TenantManagementTenantCreateDto> {
  @override
  final Iterable<Type> types = const [
    TenantManagementTenantCreateDto,
    _$TenantManagementTenantCreateDto
  ];

  @override
  final String wireName = r'TenantManagementTenantCreateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantManagementTenantCreateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'Name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'AdminEmailAddress';
    yield serializers.serialize(
      object.adminEmailAddress,
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
    yield r'AdminPassword';
    yield serializers.serialize(
      object.adminPassword,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantManagementTenantCreateDto object, {
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
    required TenantManagementTenantCreateDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'AdminEmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminEmailAddress = valueDes;
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
        case r'AdminPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantManagementTenantCreateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantManagementTenantCreateDtoBuilder();
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
