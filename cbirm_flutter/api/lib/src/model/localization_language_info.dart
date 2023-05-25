//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'localization_language_info.g.dart';

/// LocalizationLanguageInfo
///
/// Properties:
/// * [cultureName]
/// * [uiCultureName]
/// * [displayName]
/// * [twoLetterISOLanguageName]
/// * [flagIcon]
@BuiltValue()
abstract class LocalizationLanguageInfo
    implements
        Built<LocalizationLanguageInfo, LocalizationLanguageInfoBuilder> {
  @BuiltValueField(wireName: r'CultureName')
  String? get cultureName;

  @BuiltValueField(wireName: r'UiCultureName')
  String? get uiCultureName;

  @BuiltValueField(wireName: r'DisplayName')
  String? get displayName;

  @BuiltValueField(wireName: r'TwoLetterISOLanguageName')
  String? get twoLetterISOLanguageName;

  @BuiltValueField(wireName: r'FlagIcon')
  String? get flagIcon;

  LocalizationLanguageInfo._();

  factory LocalizationLanguageInfo(
          [void updates(LocalizationLanguageInfoBuilder b)]) =
      _$LocalizationLanguageInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LocalizationLanguageInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LocalizationLanguageInfo> get serializer =>
      _$LocalizationLanguageInfoSerializer();
}

class _$LocalizationLanguageInfoSerializer
    implements PrimitiveSerializer<LocalizationLanguageInfo> {
  @override
  final Iterable<Type> types = const [
    LocalizationLanguageInfo,
    _$LocalizationLanguageInfo
  ];

  @override
  final String wireName = r'LocalizationLanguageInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LocalizationLanguageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cultureName != null) {
      yield r'CultureName';
      yield serializers.serialize(
        object.cultureName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.uiCultureName != null) {
      yield r'UiCultureName';
      yield serializers.serialize(
        object.uiCultureName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayName != null) {
      yield r'DisplayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.twoLetterISOLanguageName != null) {
      yield r'TwoLetterISOLanguageName';
      yield serializers.serialize(
        object.twoLetterISOLanguageName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.flagIcon != null) {
      yield r'FlagIcon';
      yield serializers.serialize(
        object.flagIcon,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LocalizationLanguageInfo object, {
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
    required LocalizationLanguageInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'CultureName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cultureName = valueDes;
          break;
        case r'UiCultureName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uiCultureName = valueDes;
          break;
        case r'DisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'TwoLetterISOLanguageName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.twoLetterISOLanguageName = valueDes;
          break;
        case r'FlagIcon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.flagIcon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LocalizationLanguageInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalizationLanguageInfoBuilder();
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
