//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_enum_field_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_enum_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionEnumDto
///
/// Properties:
/// * [fields]
/// * [localizationResource]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionEnumDto
    implements
        Built<ApplicationConfigurationsObjectExtendingExtensionEnumDto,
            ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder> {
  @BuiltValueField(wireName: r'Fields')
  BuiltList<ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto>?
      get fields;

  @BuiltValueField(wireName: r'LocalizationResource')
  String? get localizationResource;

  ApplicationConfigurationsObjectExtendingExtensionEnumDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionEnumDto(
      [void updates(
          ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder
              b)]) = _$ApplicationConfigurationsObjectExtendingExtensionEnumDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsObjectExtendingExtensionEnumDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionEnumDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionEnumDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionEnumDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionEnumDto,
    _$ApplicationConfigurationsObjectExtendingExtensionEnumDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionEnumDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionEnumDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fields != null) {
      yield r'Fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType.nullable(BuiltList, [
          FullType(
              ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto)
        ]),
      );
    }
    if (object.localizationResource != null) {
      yield r'LocalizationResource';
      yield serializers.serialize(
        object.localizationResource,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionEnumDto object, {
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
    required ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(
                  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto)
            ]),
          ) as BuiltList<
              ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        case r'LocalizationResource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.localizationResource = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionEnumDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder();
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
