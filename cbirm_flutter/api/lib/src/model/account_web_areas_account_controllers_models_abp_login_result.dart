//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/account_web_areas_account_controllers_models_login_result_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_web_areas_account_controllers_models_abp_login_result.g.dart';

/// AccountWebAreasAccountControllersModelsAbpLoginResult
///
/// Properties:
/// * [result]
/// * [description]
@BuiltValue()
abstract class AccountWebAreasAccountControllersModelsAbpLoginResult
    implements
        Built<AccountWebAreasAccountControllersModelsAbpLoginResult,
            AccountWebAreasAccountControllersModelsAbpLoginResultBuilder> {
  @BuiltValueField(wireName: r'Result')
  AccountWebAreasAccountControllersModelsLoginResultType? get result;
  // enum resultEnum {  1,  2,  3,  4,  5,  };

  @BuiltValueField(wireName: r'Description')
  String? get description;

  AccountWebAreasAccountControllersModelsAbpLoginResult._();

  factory AccountWebAreasAccountControllersModelsAbpLoginResult(
      [void updates(
          AccountWebAreasAccountControllersModelsAbpLoginResultBuilder
              b)]) = _$AccountWebAreasAccountControllersModelsAbpLoginResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          AccountWebAreasAccountControllersModelsAbpLoginResultBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountWebAreasAccountControllersModelsAbpLoginResult>
      get serializer =>
          _$AccountWebAreasAccountControllersModelsAbpLoginResultSerializer();
}

class _$AccountWebAreasAccountControllersModelsAbpLoginResultSerializer
    implements
        PrimitiveSerializer<
            AccountWebAreasAccountControllersModelsAbpLoginResult> {
  @override
  final Iterable<Type> types = const [
    AccountWebAreasAccountControllersModelsAbpLoginResult,
    _$AccountWebAreasAccountControllersModelsAbpLoginResult
  ];

  @override
  final String wireName =
      r'AccountWebAreasAccountControllersModelsAbpLoginResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountWebAreasAccountControllersModelsAbpLoginResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'Result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(
            AccountWebAreasAccountControllersModelsLoginResultType),
      );
    }
    if (object.description != null) {
      yield r'Description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountWebAreasAccountControllersModelsAbpLoginResult object, {
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
    required AccountWebAreasAccountControllersModelsAbpLoginResultBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                AccountWebAreasAccountControllersModelsLoginResultType),
          ) as AccountWebAreasAccountControllersModelsLoginResultType;
          result.result = valueDes;
          break;
        case r'Description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountWebAreasAccountControllersModelsAbpLoginResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        AccountWebAreasAccountControllersModelsAbpLoginResultBuilder();
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
