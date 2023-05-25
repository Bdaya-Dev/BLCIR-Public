//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_ui_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_localizable_string_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_attribute_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_api_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyDto
///
/// Properties:
/// * [type]
/// * [typeSimple]
/// * [displayName]
/// * [api]
/// * [ui]
/// * [attributes]
/// * [configuration]
/// * [defaultValue]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyDto
    implements
        Built<ApplicationConfigurationsObjectExtendingExtensionPropertyDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder> {
  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'TypeSimple')
  String? get typeSimple;

  @BuiltValueField(wireName: r'DisplayName')
  ApplicationConfigurationsObjectExtendingLocalizableStringDto? get displayName;

  @BuiltValueField(wireName: r'Api')
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto? get api;

  @BuiltValueField(wireName: r'Ui')
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto? get ui;

  @BuiltValueField(wireName: r'Attributes')
  BuiltList<
          ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto>?
      get attributes;

  @BuiltValueField(wireName: r'Configuration')
  BuiltMap<String, JsonObject?>? get configuration;

  @BuiltValueField(wireName: r'DefaultValue')
  JsonObject? get defaultValue;

  ApplicationConfigurationsObjectExtendingExtensionPropertyDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.typeSimple != null) {
      yield r'TypeSimple';
      yield serializers.serialize(
        object.typeSimple,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayName != null) {
      yield r'DisplayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingLocalizableStringDto),
      );
    }
    if (object.api != null) {
      yield r'Api';
      yield serializers.serialize(
        object.api,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto),
      );
    }
    if (object.ui != null) {
      yield r'Ui';
      yield serializers.serialize(
        object.ui,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto),
      );
    }
    if (object.attributes != null) {
      yield r'Attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType.nullable(BuiltList, [
          FullType(
              ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto)
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
    if (object.defaultValue != null) {
      yield r'DefaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyDto object, {
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'TypeSimple':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.typeSimple = valueDes;
          break;
        case r'DisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingLocalizableStringDto),
          ) as ApplicationConfigurationsObjectExtendingLocalizableStringDto;
          result.displayName.replace(valueDes);
          break;
        case r'Api':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto;
          result.api.replace(valueDes);
          break;
        case r'Ui':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto;
          result.ui.replace(valueDes);
          break;
        case r'Attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto)
            ]),
          ) as BuiltList<
              ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
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
        case r'DefaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder();
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
