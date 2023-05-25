//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_application_global_feature_configuration_dto.g.dart';

/// ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto
///
/// Properties:
/// * [enabledFeatures]
@BuiltValue()
abstract class ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto
    implements
        Built<ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto,
            ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder> {
  @BuiltValueField(wireName: r'EnabledFeatures')
  BuiltSet<String>? get enabledFeatures;

  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto._();

  factory ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto(
          [void updates(
              ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto>
      get serializer =>
          _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoSerializer();
}

class _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto,
    _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabledFeatures != null) {
      yield r'EnabledFeatures';
      yield serializers.serialize(
        object.enabledFeatures,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto object, {
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
    required ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'EnabledFeatures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.enabledFeatures.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder();
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
