//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_ui_table_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
///
/// Properties:
/// * [isVisible]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
    implements
        Built<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder> {
  @BuiltValueField(wireName: r'IsVisible')
  bool? get isVisible;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
        object, {
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
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
        object, {
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder
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
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
      deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder();
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
