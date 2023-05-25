//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setting_management_email_settings_dto.g.dart';

/// SettingManagementEmailSettingsDto
///
/// Properties:
/// * [smtpHost]
/// * [smtpPort]
/// * [smtpUserName]
/// * [smtpPassword]
/// * [smtpDomain]
/// * [smtpEnableSsl]
/// * [smtpUseDefaultCredentials]
/// * [defaultFromAddress]
/// * [defaultFromDisplayName]
@BuiltValue()
abstract class SettingManagementEmailSettingsDto
    implements
        Built<SettingManagementEmailSettingsDto,
            SettingManagementEmailSettingsDtoBuilder> {
  @BuiltValueField(wireName: r'SmtpHost')
  String? get smtpHost;

  @BuiltValueField(wireName: r'SmtpPort')
  int? get smtpPort;

  @BuiltValueField(wireName: r'SmtpUserName')
  String? get smtpUserName;

  @BuiltValueField(wireName: r'SmtpPassword')
  String? get smtpPassword;

  @BuiltValueField(wireName: r'SmtpDomain')
  String? get smtpDomain;

  @BuiltValueField(wireName: r'SmtpEnableSsl')
  bool? get smtpEnableSsl;

  @BuiltValueField(wireName: r'SmtpUseDefaultCredentials')
  bool? get smtpUseDefaultCredentials;

  @BuiltValueField(wireName: r'DefaultFromAddress')
  String? get defaultFromAddress;

  @BuiltValueField(wireName: r'DefaultFromDisplayName')
  String? get defaultFromDisplayName;

  SettingManagementEmailSettingsDto._();

  factory SettingManagementEmailSettingsDto(
          [void updates(SettingManagementEmailSettingsDtoBuilder b)]) =
      _$SettingManagementEmailSettingsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingManagementEmailSettingsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingManagementEmailSettingsDto> get serializer =>
      _$SettingManagementEmailSettingsDtoSerializer();
}

class _$SettingManagementEmailSettingsDtoSerializer
    implements PrimitiveSerializer<SettingManagementEmailSettingsDto> {
  @override
  final Iterable<Type> types = const [
    SettingManagementEmailSettingsDto,
    _$SettingManagementEmailSettingsDto
  ];

  @override
  final String wireName = r'SettingManagementEmailSettingsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingManagementEmailSettingsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.smtpHost != null) {
      yield r'SmtpHost';
      yield serializers.serialize(
        object.smtpHost,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.smtpPort != null) {
      yield r'SmtpPort';
      yield serializers.serialize(
        object.smtpPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.smtpUserName != null) {
      yield r'SmtpUserName';
      yield serializers.serialize(
        object.smtpUserName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.smtpPassword != null) {
      yield r'SmtpPassword';
      yield serializers.serialize(
        object.smtpPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.smtpDomain != null) {
      yield r'SmtpDomain';
      yield serializers.serialize(
        object.smtpDomain,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.smtpEnableSsl != null) {
      yield r'SmtpEnableSsl';
      yield serializers.serialize(
        object.smtpEnableSsl,
        specifiedType: const FullType(bool),
      );
    }
    if (object.smtpUseDefaultCredentials != null) {
      yield r'SmtpUseDefaultCredentials';
      yield serializers.serialize(
        object.smtpUseDefaultCredentials,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultFromAddress != null) {
      yield r'DefaultFromAddress';
      yield serializers.serialize(
        object.defaultFromAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.defaultFromDisplayName != null) {
      yield r'DefaultFromDisplayName';
      yield serializers.serialize(
        object.defaultFromDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingManagementEmailSettingsDto object, {
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
    required SettingManagementEmailSettingsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'SmtpHost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.smtpHost = valueDes;
          break;
        case r'SmtpPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.smtpPort = valueDes;
          break;
        case r'SmtpUserName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.smtpUserName = valueDes;
          break;
        case r'SmtpPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.smtpPassword = valueDes;
          break;
        case r'SmtpDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.smtpDomain = valueDes;
          break;
        case r'SmtpEnableSsl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.smtpEnableSsl = valueDes;
          break;
        case r'SmtpUseDefaultCredentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.smtpUseDefaultCredentials = valueDes;
          break;
        case r'DefaultFromAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultFromAddress = valueDes;
          break;
        case r'DefaultFromDisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultFromDisplayName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingManagementEmailSettingsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingManagementEmailSettingsDtoBuilder();
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
