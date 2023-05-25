//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_vote_for_transaction_proposal_dto.g.dart';

/// BdayaBLCIRMStateVoteForTransactionProposalDto
///
/// Properties:
/// * [result]
/// * [notes]
@BuiltValue()
abstract class BdayaBLCIRMStateVoteForTransactionProposalDto
    implements
        Built<BdayaBLCIRMStateVoteForTransactionProposalDto,
            BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder> {
  @BuiltValueField(wireName: r'Result')
  bool? get result;

  @BuiltValueField(wireName: r'Notes')
  String? get notes;

  BdayaBLCIRMStateVoteForTransactionProposalDto._();

  factory BdayaBLCIRMStateVoteForTransactionProposalDto(
          [void updates(
              BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder b)]) =
      _$BdayaBLCIRMStateVoteForTransactionProposalDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateVoteForTransactionProposalDto>
      get serializer =>
          _$BdayaBLCIRMStateVoteForTransactionProposalDtoSerializer();
}

class _$BdayaBLCIRMStateVoteForTransactionProposalDtoSerializer
    implements
        PrimitiveSerializer<BdayaBLCIRMStateVoteForTransactionProposalDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateVoteForTransactionProposalDto,
    _$BdayaBLCIRMStateVoteForTransactionProposalDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateVoteForTransactionProposalDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateVoteForTransactionProposalDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'Result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notes != null) {
      yield r'Notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateVoteForTransactionProposalDto object, {
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
    required BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.result = valueDes;
          break;
        case r'Notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateVoteForTransactionProposalDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder();
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
