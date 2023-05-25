//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/application_configurations_iana_time_zone.dart';
import 'package:blcirm_api/src/model/application_configurations_windows_time_zone.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_time_zone.g.dart';

/// ApplicationConfigurationsTimeZone
///
/// Properties:
/// * [iana]
/// * [windows]
@BuiltValue()
abstract class ApplicationConfigurationsTimeZone
    implements
        Built<ApplicationConfigurationsTimeZone,
            ApplicationConfigurationsTimeZoneBuilder> {
  @BuiltValueField(wireName: r'Iana')
  ApplicationConfigurationsIanaTimeZone? get iana;

  @BuiltValueField(wireName: r'Windows')
  ApplicationConfigurationsWindowsTimeZone? get windows;

  ApplicationConfigurationsTimeZone._();

  factory ApplicationConfigurationsTimeZone(
          [void updates(ApplicationConfigurationsTimeZoneBuilder b)]) =
      _$ApplicationConfigurationsTimeZone;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationConfigurationsTimeZoneBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsTimeZone> get serializer =>
      _$ApplicationConfigurationsTimeZoneSerializer();
}

class _$ApplicationConfigurationsTimeZoneSerializer
    implements PrimitiveSerializer<ApplicationConfigurationsTimeZone> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsTimeZone,
    _$ApplicationConfigurationsTimeZone
  ];

  @override
  final String wireName = r'ApplicationConfigurationsTimeZone';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsTimeZone object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.iana != null) {
      yield r'Iana';
      yield serializers.serialize(
        object.iana,
        specifiedType: const FullType(ApplicationConfigurationsIanaTimeZone),
      );
    }
    if (object.windows != null) {
      yield r'Windows';
      yield serializers.serialize(
        object.windows,
        specifiedType: const FullType(ApplicationConfigurationsWindowsTimeZone),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsTimeZone object, {
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
    required ApplicationConfigurationsTimeZoneBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Iana':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ApplicationConfigurationsIanaTimeZone),
          ) as ApplicationConfigurationsIanaTimeZone;
          result.iana.replace(valueDes);
          break;
        case r'Windows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ApplicationConfigurationsWindowsTimeZone),
          ) as ApplicationConfigurationsWindowsTimeZone;
          result.windows.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsTimeZone deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsTimeZoneBuilder();
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
