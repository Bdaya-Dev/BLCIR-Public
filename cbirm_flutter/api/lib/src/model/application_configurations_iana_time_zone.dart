//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_iana_time_zone.g.dart';

/// ApplicationConfigurationsIanaTimeZone
///
/// Properties:
/// * [timeZoneName]
@BuiltValue()
abstract class ApplicationConfigurationsIanaTimeZone
    implements
        Built<ApplicationConfigurationsIanaTimeZone,
            ApplicationConfigurationsIanaTimeZoneBuilder> {
  @BuiltValueField(wireName: r'TimeZoneName')
  String? get timeZoneName;

  ApplicationConfigurationsIanaTimeZone._();

  factory ApplicationConfigurationsIanaTimeZone(
          [void updates(ApplicationConfigurationsIanaTimeZoneBuilder b)]) =
      _$ApplicationConfigurationsIanaTimeZone;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationConfigurationsIanaTimeZoneBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsIanaTimeZone> get serializer =>
      _$ApplicationConfigurationsIanaTimeZoneSerializer();
}

class _$ApplicationConfigurationsIanaTimeZoneSerializer
    implements PrimitiveSerializer<ApplicationConfigurationsIanaTimeZone> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsIanaTimeZone,
    _$ApplicationConfigurationsIanaTimeZone
  ];

  @override
  final String wireName = r'ApplicationConfigurationsIanaTimeZone';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsIanaTimeZone object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timeZoneName != null) {
      yield r'TimeZoneName';
      yield serializers.serialize(
        object.timeZoneName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsIanaTimeZone object, {
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
    required ApplicationConfigurationsIanaTimeZoneBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'TimeZoneName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timeZoneName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsIanaTimeZone deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsIanaTimeZoneBuilder();
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
