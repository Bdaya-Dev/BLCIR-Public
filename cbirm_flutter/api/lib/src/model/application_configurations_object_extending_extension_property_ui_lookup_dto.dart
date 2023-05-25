//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_ui_lookup_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto
///
/// Properties:
/// * [url]
/// * [resultListPropertyName]
/// * [displayPropertyName]
/// * [valuePropertyName]
/// * [filterParamName]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto
    implements
        Built<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder> {
  @BuiltValueField(wireName: r'Url')
  String? get url;

  @BuiltValueField(wireName: r'ResultListPropertyName')
  String? get resultListPropertyName;

  @BuiltValueField(wireName: r'DisplayPropertyName')
  String? get displayPropertyName;

  @BuiltValueField(wireName: r'ValuePropertyName')
  String? get valuePropertyName;

  @BuiltValueField(wireName: r'FilterParamName')
  String? get filterParamName;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto
        object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'Url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.resultListPropertyName != null) {
      yield r'ResultListPropertyName';
      yield serializers.serialize(
        object.resultListPropertyName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayPropertyName != null) {
      yield r'DisplayPropertyName';
      yield serializers.serialize(
        object.displayPropertyName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.valuePropertyName != null) {
      yield r'ValuePropertyName';
      yield serializers.serialize(
        object.valuePropertyName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.filterParamName != null) {
      yield r'FilterParamName';
      yield serializers.serialize(
        object.filterParamName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'ResultListPropertyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resultListPropertyName = valueDes;
          break;
        case r'DisplayPropertyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayPropertyName = valueDes;
          break;
        case r'ValuePropertyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.valuePropertyName = valueDes;
          break;
        case r'FilterParamName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.filterParamName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto
      deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder();
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
