//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/application_configurations_time_zone.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_timing_dto.g.dart';

/// ApplicationConfigurationsTimingDto
///
/// Properties:
/// * [timeZone]
@BuiltValue()
abstract class ApplicationConfigurationsTimingDto
    implements
        Built<ApplicationConfigurationsTimingDto,
            ApplicationConfigurationsTimingDtoBuilder> {
  @BuiltValueField(wireName: r'TimeZone')
  ApplicationConfigurationsTimeZone? get timeZone;

  ApplicationConfigurationsTimingDto._();

  factory ApplicationConfigurationsTimingDto(
          [void updates(ApplicationConfigurationsTimingDtoBuilder b)]) =
      _$ApplicationConfigurationsTimingDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationConfigurationsTimingDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsTimingDto> get serializer =>
      _$ApplicationConfigurationsTimingDtoSerializer();
}

class _$ApplicationConfigurationsTimingDtoSerializer
    implements PrimitiveSerializer<ApplicationConfigurationsTimingDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsTimingDto,
    _$ApplicationConfigurationsTimingDto
  ];

  @override
  final String wireName = r'ApplicationConfigurationsTimingDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsTimingDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timeZone != null) {
      yield r'TimeZone';
      yield serializers.serialize(
        object.timeZone,
        specifiedType: const FullType(ApplicationConfigurationsTimeZone),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsTimingDto object, {
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
    required ApplicationConfigurationsTimingDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'TimeZone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApplicationConfigurationsTimeZone),
          ) as ApplicationConfigurationsTimeZone;
          result.timeZone.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsTimingDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsTimingDtoBuilder();
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
