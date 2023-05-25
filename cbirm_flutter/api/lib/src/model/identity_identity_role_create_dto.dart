//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:blcirm_api/src/model/identity_identity_role_create_or_update_dto_base.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_identity_role_create_dto.g.dart';

/// IdentityIdentityRoleCreateDto
///
/// Properties:
/// * [extraProperties]
/// * [name]
/// * [isDefault]
/// * [isPublic]
@BuiltValue()
abstract class IdentityIdentityRoleCreateDto
    implements
        IdentityIdentityRoleCreateOrUpdateDtoBase,
        Built<IdentityIdentityRoleCreateDto,
            IdentityIdentityRoleCreateDtoBuilder> {
  IdentityIdentityRoleCreateDto._();

  factory IdentityIdentityRoleCreateDto(
          [void updates(IdentityIdentityRoleCreateDtoBuilder b)]) =
      _$IdentityIdentityRoleCreateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentityIdentityRoleCreateDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityIdentityRoleCreateDto> get serializer =>
      _$IdentityIdentityRoleCreateDtoSerializer();
}

class _$IdentityIdentityRoleCreateDtoSerializer
    implements PrimitiveSerializer<IdentityIdentityRoleCreateDto> {
  @override
  final Iterable<Type> types = const [
    IdentityIdentityRoleCreateDto,
    _$IdentityIdentityRoleCreateDto
  ];

  @override
  final String wireName = r'IdentityIdentityRoleCreateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityIdentityRoleCreateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'Name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.isPublic != null) {
      yield r'IsPublic';
      yield serializers.serialize(
        object.isPublic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isDefault != null) {
      yield r'IsDefault';
      yield serializers.serialize(
        object.isDefault,
        specifiedType: const FullType(bool),
      );
    }
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
    IdentityIdentityRoleCreateDto object, {
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
    required IdentityIdentityRoleCreateDtoBuilder result,
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
        case r'IsPublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPublic = valueDes;
          break;
        case r'IsDefault':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
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
  IdentityIdentityRoleCreateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentityIdentityRoleCreateDtoBuilder();
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
