//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_ui_form_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
///
/// Properties:
/// * [isVisible]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
    implements
        Built<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder> {
  @BuiltValueField(wireName: r'IsVisible')
  bool? get isVisible;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isVisible != null) {
      yield r'IsVisible';
      yield serializers.serialize(
        object.isVisible,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto object, {
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'IsVisible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVisible = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
      deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder();
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
