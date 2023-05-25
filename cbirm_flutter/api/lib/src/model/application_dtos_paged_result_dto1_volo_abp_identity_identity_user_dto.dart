//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/identity_identity_user_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_dtos_paged_result_dto1_volo_abp_identity_identity_user_dto.g.dart';

/// ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto
///
/// Properties:
/// * [items]
/// * [totalCount]
@BuiltValue()
abstract class ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto
    implements
        Built<ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto,
            ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder> {
  @BuiltValueField(wireName: r'Items')
  BuiltList<IdentityIdentityUserDto>? get items;

  @BuiltValueField(wireName: r'TotalCount')
  int? get totalCount;

  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto._();

  factory ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto(
          [void updates(
              ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder
                  b)]) =
      _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto>
      get serializer =>
          _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoSerializer();
}

class _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto,
    _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto
  ];

  @override
  final String wireName =
      r'ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'Items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(IdentityIdentityUserDto)]),
      );
    }
    if (object.totalCount != null) {
      yield r'TotalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto object, {
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
    required ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(IdentityIdentityUserDto)]),
          ) as BuiltList<IdentityIdentityUserDto>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'TotalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder();
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
