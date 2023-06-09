//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_api_create_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
///
/// Properties:
/// * [isAvailable]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
    implements
        Built<
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder> {
  @BuiltValueField(wireName: r'IsAvailable')
  bool? get isAvailable;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
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
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder
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
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
      deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder();
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
