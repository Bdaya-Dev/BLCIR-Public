//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_application_localization_resource_dto.g.dart';

/// ApplicationConfigurationsApplicationLocalizationResourceDto
///
/// Properties:
/// * [texts]
/// * [baseResources]
@BuiltValue()
abstract class ApplicationConfigurationsApplicationLocalizationResourceDto
    implements
        Built<ApplicationConfigurationsApplicationLocalizationResourceDto,
            ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder> {
  @BuiltValueField(wireName: r'Texts')
  BuiltMap<String, String?>? get texts;

  @BuiltValueField(wireName: r'BaseResources')
  BuiltList<String>? get baseResources;

  ApplicationConfigurationsApplicationLocalizationResourceDto._();

  factory ApplicationConfigurationsApplicationLocalizationResourceDto(
          [void updates(
              ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsApplicationLocalizationResourceDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsApplicationLocalizationResourceDto>
      get serializer =>
          _$ApplicationConfigurationsApplicationLocalizationResourceDtoSerializer();
}

class _$ApplicationConfigurationsApplicationLocalizationResourceDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsApplicationLocalizationResourceDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsApplicationLocalizationResourceDto,
    _$ApplicationConfigurationsApplicationLocalizationResourceDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsApplicationLocalizationResourceDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsApplicationLocalizationResourceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.texts != null) {
      yield r'Texts';
      yield serializers.serialize(
        object.texts,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(String)]),
      );
    }
    if (object.baseResources != null) {
      yield r'BaseResources';
      yield serializers.serialize(
        object.baseResources,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsApplicationLocalizationResourceDto object, {
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
    required ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Texts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(String)]),
          ) as BuiltMap<String, String?>?;
          if (valueDes == null) continue;
          result.texts.replace(valueDes);
          break;
        case r'BaseResources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.baseResources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsApplicationLocalizationResourceDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder();
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
