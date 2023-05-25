//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_localizable_string_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingLocalizableStringDto
///
/// Properties:
/// * [name]
/// * [resource]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingLocalizableStringDto
    implements
        Built<ApplicationConfigurationsObjectExtendingLocalizableStringDto,
            ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Resource')
  String? get resource;

  ApplicationConfigurationsObjectExtendingLocalizableStringDto._();

  factory ApplicationConfigurationsObjectExtendingLocalizableStringDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingLocalizableStringDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingLocalizableStringDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingLocalizableStringDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingLocalizableStringDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingLocalizableStringDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingLocalizableStringDto,
    _$ApplicationConfigurationsObjectExtendingLocalizableStringDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingLocalizableStringDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingLocalizableStringDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.resource != null) {
      yield r'Resource';
      yield serializers.serialize(
        object.resource,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingLocalizableStringDto object, {
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
    required ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'Resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resource = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingLocalizableStringDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder();
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
