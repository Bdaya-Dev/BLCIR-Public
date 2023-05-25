//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_application_setting_configuration_dto.g.dart';

/// ApplicationConfigurationsApplicationSettingConfigurationDto
///
/// Properties:
/// * [values]
@BuiltValue()
abstract class ApplicationConfigurationsApplicationSettingConfigurationDto
    implements
        Built<ApplicationConfigurationsApplicationSettingConfigurationDto,
            ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder> {
  @BuiltValueField(wireName: r'Values')
  BuiltMap<String, String?>? get values;

  ApplicationConfigurationsApplicationSettingConfigurationDto._();

  factory ApplicationConfigurationsApplicationSettingConfigurationDto(
          [void updates(
              ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsApplicationSettingConfigurationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsApplicationSettingConfigurationDto>
      get serializer =>
          _$ApplicationConfigurationsApplicationSettingConfigurationDtoSerializer();
}

class _$ApplicationConfigurationsApplicationSettingConfigurationDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsApplicationSettingConfigurationDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsApplicationSettingConfigurationDto,
    _$ApplicationConfigurationsApplicationSettingConfigurationDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsApplicationSettingConfigurationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsApplicationSettingConfigurationDto object, {
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
    ApplicationConfigurationsApplicationSettingConfigurationDto object, {
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
    required ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder
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
  ApplicationConfigurationsApplicationSettingConfigurationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder();
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
