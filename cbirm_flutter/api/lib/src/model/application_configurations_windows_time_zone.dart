//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_windows_time_zone.g.dart';

/// ApplicationConfigurationsWindowsTimeZone
///
/// Properties:
/// * [timeZoneId]
@BuiltValue()
abstract class ApplicationConfigurationsWindowsTimeZone
    implements
        Built<ApplicationConfigurationsWindowsTimeZone,
            ApplicationConfigurationsWindowsTimeZoneBuilder> {
  @BuiltValueField(wireName: r'TimeZoneId')
  String? get timeZoneId;

  ApplicationConfigurationsWindowsTimeZone._();

  factory ApplicationConfigurationsWindowsTimeZone(
          [void updates(ApplicationConfigurationsWindowsTimeZoneBuilder b)]) =
      _$ApplicationConfigurationsWindowsTimeZone;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationConfigurationsWindowsTimeZoneBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsWindowsTimeZone> get serializer =>
      _$ApplicationConfigurationsWindowsTimeZoneSerializer();
}

class _$ApplicationConfigurationsWindowsTimeZoneSerializer
    implements PrimitiveSerializer<ApplicationConfigurationsWindowsTimeZone> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsWindowsTimeZone,
    _$ApplicationConfigurationsWindowsTimeZone
  ];

  @override
  final String wireName = r'ApplicationConfigurationsWindowsTimeZone';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsWindowsTimeZone object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timeZoneId != null) {
      yield r'TimeZoneId';
      yield serializers.serialize(
        object.timeZoneId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsWindowsTimeZone object, {
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
    required ApplicationConfigurationsWindowsTimeZoneBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'TimeZoneId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timeZoneId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsWindowsTimeZone deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsWindowsTimeZoneBuilder();
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
