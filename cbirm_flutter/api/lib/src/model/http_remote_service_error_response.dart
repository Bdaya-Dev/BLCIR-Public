//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/http_remote_service_error_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_remote_service_error_response.g.dart';

/// HttpRemoteServiceErrorResponse
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class HttpRemoteServiceErrorResponse
    implements
        Built<HttpRemoteServiceErrorResponse,
            HttpRemoteServiceErrorResponseBuilder> {
  @BuiltValueField(wireName: r'Error')
  HttpRemoteServiceErrorInfo? get error;

  HttpRemoteServiceErrorResponse._();

  factory HttpRemoteServiceErrorResponse(
          [void updates(HttpRemoteServiceErrorResponseBuilder b)]) =
      _$HttpRemoteServiceErrorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpRemoteServiceErrorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpRemoteServiceErrorResponse> get serializer =>
      _$HttpRemoteServiceErrorResponseSerializer();
}

class _$HttpRemoteServiceErrorResponseSerializer
    implements PrimitiveSerializer<HttpRemoteServiceErrorResponse> {
  @override
  final Iterable<Type> types = const [
    HttpRemoteServiceErrorResponse,
    _$HttpRemoteServiceErrorResponse
  ];

  @override
  final String wireName = r'HttpRemoteServiceErrorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpRemoteServiceErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'Error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(HttpRemoteServiceErrorInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpRemoteServiceErrorResponse object, {
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
    required HttpRemoteServiceErrorResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HttpRemoteServiceErrorInfo),
          ) as HttpRemoteServiceErrorInfo;
          result.error.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpRemoteServiceErrorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpRemoteServiceErrorResponseBuilder();
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
