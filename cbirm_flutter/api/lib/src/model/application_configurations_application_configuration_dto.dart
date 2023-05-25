//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/application_configurations_application_localization_configuration_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_application_auth_configuration_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_application_setting_configuration_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_application_global_feature_configuration_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_clock_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_application_feature_configuration_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_object_extensions_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/multi_tenancy_current_tenant_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_current_user_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_timing_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:blcirm_api/src/model/multi_tenancy_multi_tenancy_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_application_configuration_dto.g.dart';

/// ApplicationConfigurationsApplicationConfigurationDto
///
/// Properties:
/// * [localization]
/// * [auth]
/// * [setting]
/// * [currentUser]
/// * [features]
/// * [globalFeatures]
/// * [multiTenancy]
/// * [currentTenant]
/// * [timing]
/// * [clock]
/// * [objectExtensions]
/// * [extraProperties]
@BuiltValue()
abstract class ApplicationConfigurationsApplicationConfigurationDto
    implements
        Built<ApplicationConfigurationsApplicationConfigurationDto,
            ApplicationConfigurationsApplicationConfigurationDtoBuilder> {
  @BuiltValueField(wireName: r'Localization')
  ApplicationConfigurationsApplicationLocalizationConfigurationDto?
      get localization;

  @BuiltValueField(wireName: r'Auth')
  ApplicationConfigurationsApplicationAuthConfigurationDto? get auth;

  @BuiltValueField(wireName: r'Setting')
  ApplicationConfigurationsApplicationSettingConfigurationDto? get setting;

  @BuiltValueField(wireName: r'CurrentUser')
  ApplicationConfigurationsCurrentUserDto? get currentUser;

  @BuiltValueField(wireName: r'Features')
  ApplicationConfigurationsApplicationFeatureConfigurationDto? get features;

  @BuiltValueField(wireName: r'GlobalFeatures')
  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto?
      get globalFeatures;

  @BuiltValueField(wireName: r'MultiTenancy')
  MultiTenancyMultiTenancyInfoDto? get multiTenancy;

  @BuiltValueField(wireName: r'CurrentTenant')
  MultiTenancyCurrentTenantDto? get currentTenant;

  @BuiltValueField(wireName: r'Timing')
  ApplicationConfigurationsTimingDto? get timing;

  @BuiltValueField(wireName: r'Clock')
  ApplicationConfigurationsClockDto? get clock;

  @BuiltValueField(wireName: r'ObjectExtensions')
  ApplicationConfigurationsObjectExtendingObjectExtensionsDto?
      get objectExtensions;

  @BuiltValueField(wireName: r'ExtraProperties')
  BuiltMap<String, JsonObject?>? get extraProperties;

  ApplicationConfigurationsApplicationConfigurationDto._();

  factory ApplicationConfigurationsApplicationConfigurationDto(
          [void updates(
              ApplicationConfigurationsApplicationConfigurationDtoBuilder b)]) =
      _$ApplicationConfigurationsApplicationConfigurationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsApplicationConfigurationDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsApplicationConfigurationDto>
      get serializer =>
          _$ApplicationConfigurationsApplicationConfigurationDtoSerializer();
}

class _$ApplicationConfigurationsApplicationConfigurationDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsApplicationConfigurationDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsApplicationConfigurationDto,
    _$ApplicationConfigurationsApplicationConfigurationDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsApplicationConfigurationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsApplicationConfigurationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.localization != null) {
      yield r'Localization';
      yield serializers.serialize(
        object.localization,
        specifiedType: const FullType(
            ApplicationConfigurationsApplicationLocalizationConfigurationDto),
      );
    }
    if (object.auth != null) {
      yield r'Auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(
            ApplicationConfigurationsApplicationAuthConfigurationDto),
      );
    }
    if (object.setting != null) {
      yield r'Setting';
      yield serializers.serialize(
        object.setting,
        specifiedType: const FullType(
            ApplicationConfigurationsApplicationSettingConfigurationDto),
      );
    }
    if (object.currentUser != null) {
      yield r'CurrentUser';
      yield serializers.serialize(
        object.currentUser,
        specifiedType: const FullType(ApplicationConfigurationsCurrentUserDto),
      );
    }
    if (object.features != null) {
      yield r'Features';
      yield serializers.serialize(
        object.features,
        specifiedType: const FullType(
            ApplicationConfigurationsApplicationFeatureConfigurationDto),
      );
    }
    if (object.globalFeatures != null) {
      yield r'GlobalFeatures';
      yield serializers.serialize(
        object.globalFeatures,
        specifiedType: const FullType(
            ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto),
      );
    }
    if (object.multiTenancy != null) {
      yield r'MultiTenancy';
      yield serializers.serialize(
        object.multiTenancy,
        specifiedType: const FullType(MultiTenancyMultiTenancyInfoDto),
      );
    }
    if (object.currentTenant != null) {
      yield r'CurrentTenant';
      yield serializers.serialize(
        object.currentTenant,
        specifiedType: const FullType(MultiTenancyCurrentTenantDto),
      );
    }
    if (object.timing != null) {
      yield r'Timing';
      yield serializers.serialize(
        object.timing,
        specifiedType: const FullType(ApplicationConfigurationsTimingDto),
      );
    }
    if (object.clock != null) {
      yield r'Clock';
      yield serializers.serialize(
        object.clock,
        specifiedType: const FullType(ApplicationConfigurationsClockDto),
      );
    }
    if (object.objectExtensions != null) {
      yield r'ObjectExtensions';
      yield serializers.serialize(
        object.objectExtensions,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingObjectExtensionsDto),
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
    ApplicationConfigurationsApplicationConfigurationDto object, {
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
    required ApplicationConfigurationsApplicationConfigurationDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Localization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsApplicationLocalizationConfigurationDto),
          ) as ApplicationConfigurationsApplicationLocalizationConfigurationDto;
          result.localization.replace(valueDes);
          break;
        case r'Auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsApplicationAuthConfigurationDto),
          ) as ApplicationConfigurationsApplicationAuthConfigurationDto;
          result.auth.replace(valueDes);
          break;
        case r'Setting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsApplicationSettingConfigurationDto),
          ) as ApplicationConfigurationsApplicationSettingConfigurationDto;
          result.setting.replace(valueDes);
          break;
        case r'CurrentUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ApplicationConfigurationsCurrentUserDto),
          ) as ApplicationConfigurationsCurrentUserDto;
          result.currentUser.replace(valueDes);
          break;
        case r'Features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsApplicationFeatureConfigurationDto),
          ) as ApplicationConfigurationsApplicationFeatureConfigurationDto;
          result.features.replace(valueDes);
          break;
        case r'GlobalFeatures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto),
          ) as ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto;
          result.globalFeatures.replace(valueDes);
          break;
        case r'MultiTenancy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MultiTenancyMultiTenancyInfoDto),
          ) as MultiTenancyMultiTenancyInfoDto;
          result.multiTenancy.replace(valueDes);
          break;
        case r'CurrentTenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MultiTenancyCurrentTenantDto),
          ) as MultiTenancyCurrentTenantDto;
          result.currentTenant.replace(valueDes);
          break;
        case r'Timing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApplicationConfigurationsTimingDto),
          ) as ApplicationConfigurationsTimingDto;
          result.timing.replace(valueDes);
          break;
        case r'Clock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApplicationConfigurationsClockDto),
          ) as ApplicationConfigurationsClockDto;
          result.clock.replace(valueDes);
          break;
        case r'ObjectExtensions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingObjectExtensionsDto),
          ) as ApplicationConfigurationsObjectExtendingObjectExtensionsDto;
          result.objectExtensions.replace(valueDes);
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
  ApplicationConfigurationsApplicationConfigurationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsApplicationConfigurationDtoBuilder();
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
