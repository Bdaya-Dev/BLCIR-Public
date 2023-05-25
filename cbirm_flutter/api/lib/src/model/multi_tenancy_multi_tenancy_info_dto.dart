//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multi_tenancy_multi_tenancy_info_dto.g.dart';

/// MultiTenancyMultiTenancyInfoDto
///
/// Properties:
/// * [isEnabled]
@BuiltValue()
abstract class MultiTenancyMultiTenancyInfoDto
    implements
        Built<MultiTenancyMultiTenancyInfoDto,
            MultiTenancyMultiTenancyInfoDtoBuilder> {
  @BuiltValueField(wireName: r'IsEnabled')
  bool? get isEnabled;

  MultiTenancyMultiTenancyInfoDto._();

  factory MultiTenancyMultiTenancyInfoDto(
          [void updates(MultiTenancyMultiTenancyInfoDtoBuilder b)]) =
      _$MultiTenancyMultiTenancyInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultiTenancyMultiTenancyInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MultiTenancyMultiTenancyInfoDto> get serializer =>
      _$MultiTenancyMultiTenancyInfoDtoSerializer();
}

class _$MultiTenancyMultiTenancyInfoDtoSerializer
    implements PrimitiveSerializer<MultiTenancyMultiTenancyInfoDto> {
  @override
  final Iterable<Type> types = const [
    MultiTenancyMultiTenancyInfoDto,
    _$MultiTenancyMultiTenancyInfoDto
  ];

  @override
  final String wireName = r'MultiTenancyMultiTenancyInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MultiTenancyMultiTenancyInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isEnabled != null) {
      yield r'IsEnabled';
      yield serializers.serialize(
        object.isEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MultiTenancyMultiTenancyInfoDto object, {
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
    required MultiTenancyMultiTenancyInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'IsEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isEnabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MultiTenancyMultiTenancyInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultiTenancyMultiTenancyInfoDtoBuilder();
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
