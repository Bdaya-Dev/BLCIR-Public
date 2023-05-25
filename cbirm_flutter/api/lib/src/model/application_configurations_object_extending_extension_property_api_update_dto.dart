//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_api_update_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
///
/// Properties:
/// * [isAvailable]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
    implements
        Built<
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder> {
  @BuiltValueField(wireName: r'IsAvailable')
  bool? get isAvailable;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
        object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isAvailable != null) {
      yield r'IsAvailable';
      yield serializers.serialize(
        object.isAvailable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'IsAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAvailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
      deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder();
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
