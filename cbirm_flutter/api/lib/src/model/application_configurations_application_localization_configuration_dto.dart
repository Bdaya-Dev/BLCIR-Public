//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/localization_language_info.dart';
import 'package:blcirm_api/src/model/name_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/application_configurations_application_localization_resource_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_current_culture_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_application_localization_configuration_dto.g.dart';

/// ApplicationConfigurationsApplicationLocalizationConfigurationDto
///
/// Properties:
/// * [values]
/// * [resources]
/// * [languages]
/// * [currentCulture]
/// * [defaultResourceName]
/// * [languagesMap]
/// * [languageFilesMap]
@BuiltValue()
abstract class ApplicationConfigurationsApplicationLocalizationConfigurationDto
    implements
        Built<ApplicationConfigurationsApplicationLocalizationConfigurationDto,
            ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder> {
  @BuiltValueField(wireName: r'Values')
  BuiltMap<String, BuiltMap<String, String>?>? get values;

  @BuiltValueField(wireName: r'Resources')
  BuiltMap<String, ApplicationConfigurationsApplicationLocalizationResourceDto>?
      get resources;

  @BuiltValueField(wireName: r'Languages')
  BuiltList<LocalizationLanguageInfo>? get languages;

  @BuiltValueField(wireName: r'CurrentCulture')
  ApplicationConfigurationsCurrentCultureDto? get currentCulture;

  @BuiltValueField(wireName: r'DefaultResourceName')
  String? get defaultResourceName;

  @BuiltValueField(wireName: r'LanguagesMap')
  BuiltMap<String, BuiltList<NameValue>?>? get languagesMap;

  @BuiltValueField(wireName: r'LanguageFilesMap')
  BuiltMap<String, BuiltList<NameValue>?>? get languageFilesMap;

  ApplicationConfigurationsApplicationLocalizationConfigurationDto._();

  factory ApplicationConfigurationsApplicationLocalizationConfigurationDto(
          [void updates(
              ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsApplicationLocalizationConfigurationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsApplicationLocalizationConfigurationDto>
      get serializer =>
          _$ApplicationConfigurationsApplicationLocalizationConfigurationDtoSerializer();
}

class _$ApplicationConfigurationsApplicationLocalizationConfigurationDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsApplicationLocalizationConfigurationDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsApplicationLocalizationConfigurationDto,
    _$ApplicationConfigurationsApplicationLocalizationConfigurationDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsApplicationLocalizationConfigurationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsApplicationLocalizationConfigurationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.values != null) {
      yield r'Values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(BuiltMap, [FullType(String), FullType(String)])
        ]),
      );
    }
    if (object.resources != null) {
      yield r'Resources';
      yield serializers.serialize(
        object.resources,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(ApplicationConfigurationsApplicationLocalizationResourceDto)
        ]),
      );
    }
    if (object.languages != null) {
      yield r'Languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(LocalizationLanguageInfo)]),
      );
    }
    if (object.currentCulture != null) {
      yield r'CurrentCulture';
      yield serializers.serialize(
        object.currentCulture,
        specifiedType:
            const FullType(ApplicationConfigurationsCurrentCultureDto),
      );
    }
    if (object.defaultResourceName != null) {
      yield r'DefaultResourceName';
      yield serializers.serialize(
        object.defaultResourceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.languagesMap != null) {
      yield r'LanguagesMap';
      yield serializers.serialize(
        object.languagesMap,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(BuiltList, [FullType(NameValue)])
        ]),
      );
    }
    if (object.languageFilesMap != null) {
      yield r'LanguageFilesMap';
      yield serializers.serialize(
        object.languageFilesMap,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(BuiltList, [FullType(NameValue)])
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsApplicationLocalizationConfigurationDto object, {
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
    required ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType.nullable(BuiltMap, [FullType(String), FullType(String)])
            ]),
          ) as BuiltMap<String, BuiltMap<String, String>?>?;
          if (valueDes == null) continue;
          result.values.replace(valueDes);
          break;
        case r'Resources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(
                  ApplicationConfigurationsApplicationLocalizationResourceDto)
            ]),
          ) as BuiltMap<String,
              ApplicationConfigurationsApplicationLocalizationResourceDto>?;
          if (valueDes == null) continue;
          result.resources.replace(valueDes);
          break;
        case r'Languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(LocalizationLanguageInfo)]),
          ) as BuiltList<LocalizationLanguageInfo>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'CurrentCulture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ApplicationConfigurationsCurrentCultureDto),
          ) as ApplicationConfigurationsCurrentCultureDto;
          result.currentCulture.replace(valueDes);
          break;
        case r'DefaultResourceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultResourceName = valueDes;
          break;
        case r'LanguagesMap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType.nullable(BuiltList, [FullType(NameValue)])
            ]),
          ) as BuiltMap<String, BuiltList<NameValue>?>?;
          if (valueDes == null) continue;
          result.languagesMap.replace(valueDes);
          break;
        case r'LanguageFilesMap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType.nullable(BuiltList, [FullType(NameValue)])
            ]),
          ) as BuiltMap<String, BuiltList<NameValue>?>?;
          if (valueDes == null) continue;
          result.languageFilesMap.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsApplicationLocalizationConfigurationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder();
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
