//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/http_modeling_method_parameter_api_description_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/http_modeling_parameter_api_description_model.dart';
import 'package:blcirm_api/src/model/http_modeling_return_value_api_description_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_action_api_description_model.g.dart';

/// HttpModelingActionApiDescriptionModel
///
/// Properties:
/// * [uniqueName]
/// * [name]
/// * [httpMethod]
/// * [url]
/// * [supportedVersions]
/// * [parametersOnMethod]
/// * [parameters]
/// * [returnValue]
/// * [allowAnonymous]
/// * [implementFrom]
@BuiltValue()
abstract class HttpModelingActionApiDescriptionModel
    implements
        Built<HttpModelingActionApiDescriptionModel,
            HttpModelingActionApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'UniqueName')
  String? get uniqueName;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'HttpMethod')
  String? get httpMethod;

  @BuiltValueField(wireName: r'Url')
  String? get url;

  @BuiltValueField(wireName: r'SupportedVersions')
  BuiltList<String>? get supportedVersions;

  @BuiltValueField(wireName: r'ParametersOnMethod')
  BuiltList<HttpModelingMethodParameterApiDescriptionModel>?
      get parametersOnMethod;

  @BuiltValueField(wireName: r'Parameters')
  BuiltList<HttpModelingParameterApiDescriptionModel>? get parameters;

  @BuiltValueField(wireName: r'ReturnValue')
  HttpModelingReturnValueApiDescriptionModel? get returnValue;

  @BuiltValueField(wireName: r'AllowAnonymous')
  bool? get allowAnonymous;

  @BuiltValueField(wireName: r'ImplementFrom')
  String? get implementFrom;

  HttpModelingActionApiDescriptionModel._();

  factory HttpModelingActionApiDescriptionModel(
          [void updates(HttpModelingActionApiDescriptionModelBuilder b)]) =
      _$HttpModelingActionApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpModelingActionApiDescriptionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingActionApiDescriptionModel> get serializer =>
      _$HttpModelingActionApiDescriptionModelSerializer();
}

class _$HttpModelingActionApiDescriptionModelSerializer
    implements PrimitiveSerializer<HttpModelingActionApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingActionApiDescriptionModel,
    _$HttpModelingActionApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingActionApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingActionApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uniqueName != null) {
      yield r'UniqueName';
      yield serializers.serialize(
        object.uniqueName,
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
    if (object.httpMethod != null) {
      yield r'HttpMethod';
      yield serializers.serialize(
        object.httpMethod,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'Url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supportedVersions != null) {
      yield r'SupportedVersions';
      yield serializers.serialize(
        object.supportedVersions,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.parametersOnMethod != null) {
      yield r'ParametersOnMethod';
      yield serializers.serialize(
        object.parametersOnMethod,
        specifiedType: const FullType.nullable(BuiltList,
            [FullType(HttpModelingMethodParameterApiDescriptionModel)]),
      );
    }
    if (object.parameters != null) {
      yield r'Parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(HttpModelingParameterApiDescriptionModel)]),
      );
    }
    if (object.returnValue != null) {
      yield r'ReturnValue';
      yield serializers.serialize(
        object.returnValue,
        specifiedType:
            const FullType(HttpModelingReturnValueApiDescriptionModel),
      );
    }
    if (object.allowAnonymous != null) {
      yield r'AllowAnonymous';
      yield serializers.serialize(
        object.allowAnonymous,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.implementFrom != null) {
      yield r'ImplementFrom';
      yield serializers.serialize(
        object.implementFrom,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingActionApiDescriptionModel object, {
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
    required HttpModelingActionApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'UniqueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uniqueName = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'HttpMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.httpMethod = valueDes;
          break;
        case r'Url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'SupportedVersions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.supportedVersions.replace(valueDes);
          break;
        case r'ParametersOnMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(HttpModelingMethodParameterApiDescriptionModel)]),
          ) as BuiltList<HttpModelingMethodParameterApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.parametersOnMethod.replace(valueDes);
          break;
        case r'Parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(HttpModelingParameterApiDescriptionModel)]),
          ) as BuiltList<HttpModelingParameterApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'ReturnValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(HttpModelingReturnValueApiDescriptionModel),
          ) as HttpModelingReturnValueApiDescriptionModel;
          result.returnValue.replace(valueDes);
          break;
        case r'AllowAnonymous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowAnonymous = valueDes;
          break;
        case r'ImplementFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.implementFrom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingActionApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingActionApiDescriptionModelBuilder();
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
