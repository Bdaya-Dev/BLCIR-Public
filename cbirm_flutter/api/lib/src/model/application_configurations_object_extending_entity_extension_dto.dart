//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_entity_extension_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingEntityExtensionDto
///
/// Properties:
/// * [properties]
/// * [configuration]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingEntityExtensionDto
    implements
        Built<ApplicationConfigurationsObjectExtendingEntityExtensionDto,
            ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder> {
  @BuiltValueField(wireName: r'Properties')
  BuiltMap<String,
          ApplicationConfigurationsObjectExtendingExtensionPropertyDto>?
      get properties;

  @BuiltValueField(wireName: r'Configuration')
  BuiltMap<String, JsonObject?>? get configuration;

  ApplicationConfigurationsObjectExtendingEntityExtensionDto._();

  factory ApplicationConfigurationsObjectExtendingEntityExtensionDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingEntityExtensionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsObjectExtendingEntityExtensionDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingEntityExtensionDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingEntityExtensionDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingEntityExtensionDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingEntityExtensionDto,
    _$ApplicationConfigurationsObjectExtendingEntityExtensionDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingEntityExtensionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingEntityExtensionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.properties != null) {
      yield r'Properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(ApplicationConfigurationsObjectExtendingExtensionPropertyDto)
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
    ApplicationConfigurationsObjectExtendingEntityExtensionDto object, {
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
    required ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyDto)
            ]),
          ) as BuiltMap<String,
              ApplicationConfigurationsObjectExtendingExtensionPropertyDto>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
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
  ApplicationConfigurationsObjectExtendingEntityExtensionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder();
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
