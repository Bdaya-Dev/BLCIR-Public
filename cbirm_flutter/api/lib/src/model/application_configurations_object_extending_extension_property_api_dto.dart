//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_api_create_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_api_update_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_api_get_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_api_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto
///
/// Properties:
/// * [onGet]
/// * [onCreate]
/// * [onUpdate]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto
    implements
        Built<ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder> {
  @BuiltValueField(wireName: r'OnGet')
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto? get onGet;

  @BuiltValueField(wireName: r'OnCreate')
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto?
      get onCreate;

  @BuiltValueField(wireName: r'OnUpdate')
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto?
      get onUpdate;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.onGet != null) {
      yield r'OnGet';
      yield serializers.serialize(
        object.onGet,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto),
      );
    }
    if (object.onCreate != null) {
      yield r'OnCreate';
      yield serializers.serialize(
        object.onCreate,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto),
      );
    }
    if (object.onUpdate != null) {
      yield r'OnUpdate';
      yield serializers.serialize(
        object.onUpdate,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto object, {
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'OnGet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto;
          result.onGet.replace(valueDes);
          break;
        case r'OnCreate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto;
          result.onCreate.replace(valueDes);
          break;
        case r'OnUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto;
          result.onUpdate.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder();
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
