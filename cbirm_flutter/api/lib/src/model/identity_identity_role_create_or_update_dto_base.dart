//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_identity_role_create_or_update_dto_base.g.dart';

/// IdentityIdentityRoleCreateOrUpdateDtoBase
///
/// Properties:
/// * [extraProperties]
/// * [name]
/// * [isDefault]
/// * [isPublic]
@BuiltValue(instantiable: false)
abstract class IdentityIdentityRoleCreateOrUpdateDtoBase {
  @BuiltValueField(wireName: r'ExtraProperties')
  BuiltMap<String, JsonObject?>? get extraProperties;

  @BuiltValueField(wireName: r'Name')
  String get name;

  @BuiltValueField(wireName: r'IsDefault')
  bool? get isDefault;

  @BuiltValueField(wireName: r'IsPublic')
  bool? get isPublic;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityIdentityRoleCreateOrUpdateDtoBase> get serializer =>
      _$IdentityIdentityRoleCreateOrUpdateDtoBaseSerializer();
}

class _$IdentityIdentityRoleCreateOrUpdateDtoBaseSerializer
    implements PrimitiveSerializer<IdentityIdentityRoleCreateOrUpdateDtoBase> {
  @override
  final Iterable<Type> types = const [
    IdentityIdentityRoleCreateOrUpdateDtoBase
  ];

  @override
  final String wireName = r'IdentityIdentityRoleCreateOrUpdateDtoBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityIdentityRoleCreateOrUpdateDtoBase object, {
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
    if (object.isDefault != null) {
      yield r'IsDefault';
      yield serializers.serialize(
        object.isDefault,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    IdentityIdentityRoleCreateOrUpdateDtoBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  IdentityIdentityRoleCreateOrUpdateDtoBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType: FullType($IdentityIdentityRoleCreateOrUpdateDtoBase))
        as $IdentityIdentityRoleCreateOrUpdateDtoBase;
  }
}

/// a concrete implementation of [IdentityIdentityRoleCreateOrUpdateDtoBase], since [IdentityIdentityRoleCreateOrUpdateDtoBase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $IdentityIdentityRoleCreateOrUpdateDtoBase
    implements
        IdentityIdentityRoleCreateOrUpdateDtoBase,
        Built<$IdentityIdentityRoleCreateOrUpdateDtoBase,
            $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder> {
  $IdentityIdentityRoleCreateOrUpdateDtoBase._();

  factory $IdentityIdentityRoleCreateOrUpdateDtoBase(
      [void Function($IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder)?
          updates]) = _$$IdentityIdentityRoleCreateOrUpdateDtoBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$IdentityIdentityRoleCreateOrUpdateDtoBase>
      get serializer =>
          _$$IdentityIdentityRoleCreateOrUpdateDtoBaseSerializer();
}

class _$$IdentityIdentityRoleCreateOrUpdateDtoBaseSerializer
    implements PrimitiveSerializer<$IdentityIdentityRoleCreateOrUpdateDtoBase> {
  @override
  final Iterable<Type> types = const [
    $IdentityIdentityRoleCreateOrUpdateDtoBase,
    _$$IdentityIdentityRoleCreateOrUpdateDtoBase
  ];

  @override
  final String wireName = r'$IdentityIdentityRoleCreateOrUpdateDtoBase';

  @override
  Object serialize(
    Serializers serializers,
    $IdentityIdentityRoleCreateOrUpdateDtoBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(IdentityIdentityRoleCreateOrUpdateDtoBase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder result,
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
        case r'IsDefault':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
          break;
        case r'IsPublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPublic = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $IdentityIdentityRoleCreateOrUpdateDtoBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $IdentityIdentityRoleCreateOrUpdateDtoBaseBuilder();
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
