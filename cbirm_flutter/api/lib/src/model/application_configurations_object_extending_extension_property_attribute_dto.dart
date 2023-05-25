//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_attribute_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
///
/// Properties:
/// * [typeSimple]
/// * [config]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
    implements
        Built<
            ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder> {
  @BuiltValueField(wireName: r'TypeSimple')
  String? get typeSimple;

  @BuiltValueField(wireName: r'Config')
  BuiltMap<String, JsonObject?>? get config;

  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
        object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.typeSimple != null) {
      yield r'TypeSimple';
      yield serializers.serialize(
        object.typeSimple,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.config != null) {
      yield r'Config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
        object, {
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'TypeSimple':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.typeSimple = valueDes;
          break;
        case r'Config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
      deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder();
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
