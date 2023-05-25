//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_web_areas_account_controllers_models_user_login_info.g.dart';

/// AccountWebAreasAccountControllersModelsUserLoginInfo
///
/// Properties:
/// * [userNameOrEmailAddress]
/// * [password]
/// * [rememberMe]
@BuiltValue()
abstract class AccountWebAreasAccountControllersModelsUserLoginInfo
    implements
        Built<AccountWebAreasAccountControllersModelsUserLoginInfo,
            AccountWebAreasAccountControllersModelsUserLoginInfoBuilder> {
  @BuiltValueField(wireName: r'UserNameOrEmailAddress')
  String get userNameOrEmailAddress;

  @BuiltValueField(wireName: r'Password')
  String get password;

  @BuiltValueField(wireName: r'RememberMe')
  bool? get rememberMe;

  AccountWebAreasAccountControllersModelsUserLoginInfo._();

  factory AccountWebAreasAccountControllersModelsUserLoginInfo(
          [void updates(
              AccountWebAreasAccountControllersModelsUserLoginInfoBuilder b)]) =
      _$AccountWebAreasAccountControllersModelsUserLoginInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          AccountWebAreasAccountControllersModelsUserLoginInfoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountWebAreasAccountControllersModelsUserLoginInfo>
      get serializer =>
          _$AccountWebAreasAccountControllersModelsUserLoginInfoSerializer();
}

class _$AccountWebAreasAccountControllersModelsUserLoginInfoSerializer
    implements
        PrimitiveSerializer<
            AccountWebAreasAccountControllersModelsUserLoginInfo> {
  @override
  final Iterable<Type> types = const [
    AccountWebAreasAccountControllersModelsUserLoginInfo,
    _$AccountWebAreasAccountControllersModelsUserLoginInfo
  ];

  @override
  final String wireName =
      r'AccountWebAreasAccountControllersModelsUserLoginInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountWebAreasAccountControllersModelsUserLoginInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'UserNameOrEmailAddress';
    yield serializers.serialize(
      object.userNameOrEmailAddress,
      specifiedType: const FullType(String),
    );
    yield r'Password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.rememberMe != null) {
      yield r'RememberMe';
      yield serializers.serialize(
        object.rememberMe,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountWebAreasAccountControllersModelsUserLoginInfo object, {
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
    required AccountWebAreasAccountControllersModelsUserLoginInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'UserNameOrEmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userNameOrEmailAddress = valueDes;
          break;
        case r'Password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'RememberMe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.rememberMe = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountWebAreasAccountControllersModelsUserLoginInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        AccountWebAreasAccountControllersModelsUserLoginInfoBuilder();
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
