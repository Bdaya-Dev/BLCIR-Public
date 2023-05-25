//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_identity_role_dto.g.dart';

/// IdentityIdentityRoleDto
///
/// Properties:
/// * [extraProperties]
/// * [id]
/// * [name]
/// * [isDefault]
/// * [isStatic]
/// * [isPublic]
/// * [concurrencyStamp]
@BuiltValue()
abstract class IdentityIdentityRoleDto
    implements Built<IdentityIdentityRoleDto, IdentityIdentityRoleDtoBuilder> {
  @BuiltValueField(wireName: r'ExtraProperties')
  BuiltMap<String, JsonObject?>? get extraProperties;

  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'IsDefault')
  bool? get isDefault;

  @BuiltValueField(wireName: r'IsStatic')
  bool? get isStatic;

  @BuiltValueField(wireName: r'IsPublic')
  bool? get isPublic;

  @BuiltValueField(wireName: r'ConcurrencyStamp')
  String? get concurrencyStamp;

  IdentityIdentityRoleDto._();

  factory IdentityIdentityRoleDto(
          [void updates(IdentityIdentityRoleDtoBuilder b)]) =
      _$IdentityIdentityRoleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentityIdentityRoleDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityIdentityRoleDto> get serializer =>
      _$IdentityIdentityRoleDtoSerializer();
}

class _$IdentityIdentityRoleDtoSerializer
    implements PrimitiveSerializer<IdentityIdentityRoleDto> {
  @override
  final Iterable<Type> types = const [
    IdentityIdentityRoleDto,
    _$IdentityIdentityRoleDto
  ];

  @override
  final String wireName = r'IdentityIdentityRoleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityIdentityRoleDto object, {
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
    if (object.isDefault != null) {
      yield r'IsDefault';
      yield serializers.serialize(
        object.isDefault,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isStatic != null) {
      yield r'IsStatic';
      yield serializers.serialize(
        object.isStatic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPublic != null) {
      yield r'IsPublic';
      yield serializers.serialize(
        object.isPublic,
        specifiedType: const FullType(bool),
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
    IdentityIdentityRoleDto object, {
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
    required IdentityIdentityRoleDtoBuilder result,
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
        case r'IsDefault':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
          break;
        case r'IsStatic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isStatic = valueDes;
          break;
        case r'IsPublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPublic = valueDes;
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
  IdentityIdentityRoleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentityIdentityRoleDtoBuilder();
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
