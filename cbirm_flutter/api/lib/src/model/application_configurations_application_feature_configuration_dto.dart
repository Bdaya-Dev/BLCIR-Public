//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_application_feature_configuration_dto.g.dart';

/// ApplicationConfigurationsApplicationFeatureConfigurationDto
///
/// Properties:
/// * [values]
@BuiltValue()
abstract class ApplicationConfigurationsApplicationFeatureConfigurationDto
    implements
        Built<ApplicationConfigurationsApplicationFeatureConfigurationDto,
            ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder> {
  @BuiltValueField(wireName: r'Values')
  BuiltMap<String, String?>? get values;

  ApplicationConfigurationsApplicationFeatureConfigurationDto._();

  factory ApplicationConfigurationsApplicationFeatureConfigurationDto(
          [void updates(
              ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsApplicationFeatureConfigurationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsApplicationFeatureConfigurationDto>
      get serializer =>
          _$ApplicationConfigurationsApplicationFeatureConfigurationDtoSerializer();
}

class _$ApplicationConfigurationsApplicationFeatureConfigurationDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsApplicationFeatureConfigurationDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsApplicationFeatureConfigurationDto,
    _$ApplicationConfigurationsApplicationFeatureConfigurationDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsApplicationFeatureConfigurationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsApplicationFeatureConfigurationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.values != null) {
      yield r'Values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsApplicationFeatureConfigurationDto object, {
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
    required ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder
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
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(String)]),
          ) as BuiltMap<String, String?>?;
          if (valueDes == null) continue;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsApplicationFeatureConfigurationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder();
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
