//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_entity_extension_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_module_extension_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingModuleExtensionDto
///
/// Properties:
/// * [entities]
/// * [configuration]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingModuleExtensionDto
    implements
        Built<ApplicationConfigurationsObjectExtendingModuleExtensionDto,
            ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder> {
  @BuiltValueField(wireName: r'Entities')
  BuiltMap<String, ApplicationConfigurationsObjectExtendingEntityExtensionDto>?
      get entities;

  @BuiltValueField(wireName: r'Configuration')
  BuiltMap<String, JsonObject?>? get configuration;

  ApplicationConfigurationsObjectExtendingModuleExtensionDto._();

  factory ApplicationConfigurationsObjectExtendingModuleExtensionDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingModuleExtensionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsObjectExtendingModuleExtensionDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingModuleExtensionDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingModuleExtensionDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingModuleExtensionDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingModuleExtensionDto,
    _$ApplicationConfigurationsObjectExtendingModuleExtensionDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingModuleExtensionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingModuleExtensionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entities != null) {
      yield r'Entities';
      yield serializers.serialize(
        object.entities,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(ApplicationConfigurationsObjectExtendingEntityExtensionDto)
        ]),
      );
    }
    if (object.configuration != null) {
      yield r'Configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingModuleExtensionDto object, {
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
    required ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(
                  ApplicationConfigurationsObjectExtendingEntityExtensionDto)
            ]),
          ) as BuiltMap<String,
              ApplicationConfigurationsObjectExtendingEntityExtensionDto>?;
          if (valueDes == null) continue;
          result.entities.replace(valueDes);
          break;
        case r'Configuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.configuration.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingModuleExtensionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder();
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
