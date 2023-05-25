//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/application_configurations_date_time_format_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_current_culture_dto.g.dart';

/// ApplicationConfigurationsCurrentCultureDto
///
/// Properties:
/// * [displayName]
/// * [englishName]
/// * [threeLetterIsoLanguageName]
/// * [twoLetterIsoLanguageName]
/// * [isRightToLeft]
/// * [cultureName]
/// * [name]
/// * [nativeName]
/// * [dateTimeFormat]
@BuiltValue()
abstract class ApplicationConfigurationsCurrentCultureDto
    implements
        Built<ApplicationConfigurationsCurrentCultureDto,
            ApplicationConfigurationsCurrentCultureDtoBuilder> {
  @BuiltValueField(wireName: r'DisplayName')
  String? get displayName;

  @BuiltValueField(wireName: r'EnglishName')
  String? get englishName;

  @BuiltValueField(wireName: r'ThreeLetterIsoLanguageName')
  String? get threeLetterIsoLanguageName;

  @BuiltValueField(wireName: r'TwoLetterIsoLanguageName')
  String? get twoLetterIsoLanguageName;

  @BuiltValueField(wireName: r'IsRightToLeft')
  bool? get isRightToLeft;

  @BuiltValueField(wireName: r'CultureName')
  String? get cultureName;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'NativeName')
  String? get nativeName;

  @BuiltValueField(wireName: r'DateTimeFormat')
  ApplicationConfigurationsDateTimeFormatDto? get dateTimeFormat;

  ApplicationConfigurationsCurrentCultureDto._();

  factory ApplicationConfigurationsCurrentCultureDto(
          [void updates(ApplicationConfigurationsCurrentCultureDtoBuilder b)]) =
      _$ApplicationConfigurationsCurrentCultureDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationConfigurationsCurrentCultureDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsCurrentCultureDto>
      get serializer =>
          _$ApplicationConfigurationsCurrentCultureDtoSerializer();
}

class _$ApplicationConfigurationsCurrentCultureDtoSerializer
    implements PrimitiveSerializer<ApplicationConfigurationsCurrentCultureDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsCurrentCultureDto,
    _$ApplicationConfigurationsCurrentCultureDto
  ];

  @override
  final String wireName = r'ApplicationConfigurationsCurrentCultureDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsCurrentCultureDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.displayName != null) {
      yield r'DisplayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.englishName != null) {
      yield r'EnglishName';
      yield serializers.serialize(
        object.englishName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.threeLetterIsoLanguageName != null) {
      yield r'ThreeLetterIsoLanguageName';
      yield serializers.serialize(
        object.threeLetterIsoLanguageName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.twoLetterIsoLanguageName != null) {
      yield r'TwoLetterIsoLanguageName';
      yield serializers.serialize(
        object.twoLetterIsoLanguageName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isRightToLeft != null) {
      yield r'IsRightToLeft';
      yield serializers.serialize(
        object.isRightToLeft,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cultureName != null) {
      yield r'CultureName';
      yield serializers.serialize(
        object.cultureName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nativeName != null) {
      yield r'NativeName';
      yield serializers.serialize(
        object.nativeName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dateTimeFormat != null) {
      yield r'DateTimeFormat';
      yield serializers.serialize(
        object.dateTimeFormat,
        specifiedType:
            const FullType(ApplicationConfigurationsDateTimeFormatDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsCurrentCultureDto object, {
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
    required ApplicationConfigurationsCurrentCultureDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'DisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'EnglishName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.englishName = valueDes;
          break;
        case r'ThreeLetterIsoLanguageName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.threeLetterIsoLanguageName = valueDes;
          break;
        case r'TwoLetterIsoLanguageName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.twoLetterIsoLanguageName = valueDes;
          break;
        case r'IsRightToLeft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRightToLeft = valueDes;
          break;
        case r'CultureName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cultureName = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'NativeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nativeName = valueDes;
          break;
        case r'DateTimeFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ApplicationConfigurationsDateTimeFormatDto),
          ) as ApplicationConfigurationsDateTimeFormatDto;
          result.dateTimeFormat.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsCurrentCultureDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsCurrentCultureDtoBuilder();
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
