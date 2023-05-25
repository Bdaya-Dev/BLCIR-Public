//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/http_modeling_method_parameter_api_description_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/http_modeling_return_value_api_description_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_interface_method_api_description_model.g.dart';

/// HttpModelingInterfaceMethodApiDescriptionModel
///
/// Properties:
/// * [name]
/// * [parametersOnMethod]
/// * [returnValue]
@BuiltValue()
abstract class HttpModelingInterfaceMethodApiDescriptionModel
    implements
        Built<HttpModelingInterfaceMethodApiDescriptionModel,
            HttpModelingInterfaceMethodApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'ParametersOnMethod')
  BuiltList<HttpModelingMethodParameterApiDescriptionModel>?
      get parametersOnMethod;

  @BuiltValueField(wireName: r'ReturnValue')
  HttpModelingReturnValueApiDescriptionModel? get returnValue;

  HttpModelingInterfaceMethodApiDescriptionModel._();

  factory HttpModelingInterfaceMethodApiDescriptionModel(
          [void updates(
              HttpModelingInterfaceMethodApiDescriptionModelBuilder b)]) =
      _$HttpModelingInterfaceMethodApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          HttpModelingInterfaceMethodApiDescriptionModelBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingInterfaceMethodApiDescriptionModel>
      get serializer =>
          _$HttpModelingInterfaceMethodApiDescriptionModelSerializer();
}

class _$HttpModelingInterfaceMethodApiDescriptionModelSerializer
    implements
        PrimitiveSerializer<HttpModelingInterfaceMethodApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingInterfaceMethodApiDescriptionModel,
    _$HttpModelingInterfaceMethodApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingInterfaceMethodApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingInterfaceMethodApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
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
    if (object.returnValue != null) {
      yield r'ReturnValue';
      yield serializers.serialize(
        object.returnValue,
        specifiedType:
            const FullType(HttpModelingReturnValueApiDescriptionModel),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingInterfaceMethodApiDescriptionModel object, {
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
    required HttpModelingInterfaceMethodApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
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
        case r'ReturnValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(HttpModelingReturnValueApiDescriptionModel),
          ) as HttpModelingReturnValueApiDescriptionModel;
          result.returnValue.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingInterfaceMethodApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingInterfaceMethodApiDescriptionModelBuilder();
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
