//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_date_time_format_dto.g.dart';

/// ApplicationConfigurationsDateTimeFormatDto
///
/// Properties:
/// * [calendarAlgorithmType]
/// * [dateTimeFormatLong]
/// * [shortDatePattern]
/// * [fullDateTimePattern]
/// * [dateSeparator]
/// * [shortTimePattern]
/// * [longTimePattern]
@BuiltValue()
abstract class ApplicationConfigurationsDateTimeFormatDto
    implements
        Built<ApplicationConfigurationsDateTimeFormatDto,
            ApplicationConfigurationsDateTimeFormatDtoBuilder> {
  @BuiltValueField(wireName: r'CalendarAlgorithmType')
  String? get calendarAlgorithmType;

  @BuiltValueField(wireName: r'DateTimeFormatLong')
  String? get dateTimeFormatLong;

  @BuiltValueField(wireName: r'ShortDatePattern')
  String? get shortDatePattern;

  @BuiltValueField(wireName: r'FullDateTimePattern')
  String? get fullDateTimePattern;

  @BuiltValueField(wireName: r'DateSeparator')
  String? get dateSeparator;

  @BuiltValueField(wireName: r'ShortTimePattern')
  String? get shortTimePattern;

  @BuiltValueField(wireName: r'LongTimePattern')
  String? get longTimePattern;

  ApplicationConfigurationsDateTimeFormatDto._();

  factory ApplicationConfigurationsDateTimeFormatDto(
          [void updates(ApplicationConfigurationsDateTimeFormatDtoBuilder b)]) =
      _$ApplicationConfigurationsDateTimeFormatDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationConfigurationsDateTimeFormatDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsDateTimeFormatDto>
      get serializer =>
          _$ApplicationConfigurationsDateTimeFormatDtoSerializer();
}

class _$ApplicationConfigurationsDateTimeFormatDtoSerializer
    implements PrimitiveSerializer<ApplicationConfigurationsDateTimeFormatDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsDateTimeFormatDto,
    _$ApplicationConfigurationsDateTimeFormatDto
  ];

  @override
  final String wireName = r'ApplicationConfigurationsDateTimeFormatDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsDateTimeFormatDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.calendarAlgorithmType != null) {
      yield r'CalendarAlgorithmType';
      yield serializers.serialize(
        object.calendarAlgorithmType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dateTimeFormatLong != null) {
      yield r'DateTimeFormatLong';
      yield serializers.serialize(
        object.dateTimeFormatLong,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shortDatePattern != null) {
      yield r'ShortDatePattern';
      yield serializers.serialize(
        object.shortDatePattern,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fullDateTimePattern != null) {
      yield r'FullDateTimePattern';
      yield serializers.serialize(
        object.fullDateTimePattern,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dateSeparator != null) {
      yield r'DateSeparator';
      yield serializers.serialize(
        object.dateSeparator,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shortTimePattern != null) {
      yield r'ShortTimePattern';
      yield serializers.serialize(
        object.shortTimePattern,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.longTimePattern != null) {
      yield r'LongTimePattern';
      yield serializers.serialize(
        object.longTimePattern,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsDateTimeFormatDto object, {
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
    required ApplicationConfigurationsDateTimeFormatDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'CalendarAlgorithmType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.calendarAlgorithmType = valueDes;
          break;
        case r'DateTimeFormatLong':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateTimeFormatLong = valueDes;
          break;
        case r'ShortDatePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortDatePattern = valueDes;
          break;
        case r'FullDateTimePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fullDateTimePattern = valueDes;
          break;
        case r'DateSeparator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateSeparator = valueDes;
          break;
        case r'ShortTimePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortTimePattern = valueDes;
          break;
        case r'LongTimePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.longTimePattern = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsDateTimeFormatDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsDateTimeFormatDtoBuilder();
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
