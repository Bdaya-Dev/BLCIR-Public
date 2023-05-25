//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/application_configurations_application_localization_resource_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_application_localization_dto.g.dart';

/// ApplicationConfigurationsApplicationLocalizationDto
///
/// Properties:
/// * [resources]
@BuiltValue()
abstract class ApplicationConfigurationsApplicationLocalizationDto
    implements
        Built<ApplicationConfigurationsApplicationLocalizationDto,
            ApplicationConfigurationsApplicationLocalizationDtoBuilder> {
  @BuiltValueField(wireName: r'Resources')
  BuiltMap<String, ApplicationConfigurationsApplicationLocalizationResourceDto>?
      get resources;

  ApplicationConfigurationsApplicationLocalizationDto._();

  factory ApplicationConfigurationsApplicationLocalizationDto(
          [void updates(
              ApplicationConfigurationsApplicationLocalizationDtoBuilder b)]) =
      _$ApplicationConfigurationsApplicationLocalizationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsApplicationLocalizationDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsApplicationLocalizationDto>
      get serializer =>
          _$ApplicationConfigurationsApplicationLocalizationDtoSerializer();
}

class _$ApplicationConfigurationsApplicationLocalizationDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsApplicationLocalizationDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsApplicationLocalizationDto,
    _$ApplicationConfigurationsApplicationLocalizationDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsApplicationLocalizationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsApplicationLocalizationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsApplicationLocalizationDto object, {
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
    required ApplicationConfigurationsApplicationLocalizationDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsApplicationLocalizationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsApplicationLocalizationDtoBuilder();
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
