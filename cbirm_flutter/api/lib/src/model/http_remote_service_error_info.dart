//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/http_remote_service_validation_error_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_remote_service_error_info.g.dart';

/// HttpRemoteServiceErrorInfo
///
/// Properties:
/// * [code]
/// * [message]
/// * [details]
/// * [data]
/// * [validationErrors]
@BuiltValue()
abstract class HttpRemoteServiceErrorInfo
    implements
        Built<HttpRemoteServiceErrorInfo, HttpRemoteServiceErrorInfoBuilder> {
  @BuiltValueField(wireName: r'Code')
  String? get code;

  @BuiltValueField(wireName: r'Message')
  String? get message;

  @BuiltValueField(wireName: r'Details')
  String? get details;

  @BuiltValueField(wireName: r'Data')
  BuiltMap<String, JsonObject?>? get data;

  @BuiltValueField(wireName: r'ValidationErrors')
  BuiltList<HttpRemoteServiceValidationErrorInfo>? get validationErrors;

  HttpRemoteServiceErrorInfo._();

  factory HttpRemoteServiceErrorInfo(
          [void updates(HttpRemoteServiceErrorInfoBuilder b)]) =
      _$HttpRemoteServiceErrorInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpRemoteServiceErrorInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpRemoteServiceErrorInfo> get serializer =>
      _$HttpRemoteServiceErrorInfoSerializer();
}

class _$HttpRemoteServiceErrorInfoSerializer
    implements PrimitiveSerializer<HttpRemoteServiceErrorInfo> {
  @override
  final Iterable<Type> types = const [
    HttpRemoteServiceErrorInfo,
    _$HttpRemoteServiceErrorInfo
  ];

  @override
  final String wireName = r'HttpRemoteServiceErrorInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpRemoteServiceErrorInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'Code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'Message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.details != null) {
      yield r'Details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.data != null) {
      yield r'Data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.validationErrors != null) {
      yield r'ValidationErrors';
      yield serializers.serialize(
        object.validationErrors,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(HttpRemoteServiceValidationErrorInfo)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpRemoteServiceErrorInfo object, {
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
    required HttpRemoteServiceErrorInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'Message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'Details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.details = valueDes;
          break;
        case r'Data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'ValidationErrors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(HttpRemoteServiceValidationErrorInfo)]),
          ) as BuiltList<HttpRemoteServiceValidationErrorInfo>?;
          if (valueDes == null) continue;
          result.validationErrors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpRemoteServiceErrorInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpRemoteServiceErrorInfoBuilder();
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
