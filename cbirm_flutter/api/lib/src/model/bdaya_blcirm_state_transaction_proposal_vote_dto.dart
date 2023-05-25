//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_transaction_proposal_vote_dto.g.dart';

/// BdayaBLCIRMStateTransactionProposalVoteDto
///
/// Properties:
/// * [id]
/// * [creationTime]
/// * [creatorId]
/// * [tenantId]
/// * [result]
/// * [notes]
@BuiltValue()
abstract class BdayaBLCIRMStateTransactionProposalVoteDto
    implements
        Built<BdayaBLCIRMStateTransactionProposalVoteDto,
            BdayaBLCIRMStateTransactionProposalVoteDtoBuilder> {
  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'CreationTime')
  DateTime? get creationTime;

  @BuiltValueField(wireName: r'CreatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'TenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'Result')
  bool? get result;

  @BuiltValueField(wireName: r'Notes')
  String? get notes;

  BdayaBLCIRMStateTransactionProposalVoteDto._();

  factory BdayaBLCIRMStateTransactionProposalVoteDto(
          [void updates(BdayaBLCIRMStateTransactionProposalVoteDtoBuilder b)]) =
      _$BdayaBLCIRMStateTransactionProposalVoteDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateTransactionProposalVoteDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateTransactionProposalVoteDto>
      get serializer =>
          _$BdayaBLCIRMStateTransactionProposalVoteDtoSerializer();
}

class _$BdayaBLCIRMStateTransactionProposalVoteDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateTransactionProposalVoteDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateTransactionProposalVoteDto,
    _$BdayaBLCIRMStateTransactionProposalVoteDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateTransactionProposalVoteDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateTransactionProposalVoteDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'Id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.creationTime != null) {
      yield r'CreationTime';
      yield serializers.serialize(
        object.creationTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.creatorId != null) {
      yield r'CreatorId';
      yield serializers.serialize(
        object.creatorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tenantId != null) {
      yield r'TenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    BdayaBLCIRMStateTransactionProposalVoteDto object, {
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
    required BdayaBLCIRMStateTransactionProposalVoteDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'CreationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.creationTime = valueDes;
          break;
        case r'CreatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorId = valueDes;
          break;
        case r'TenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantId = valueDes;
          break;
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
  BdayaBLCIRMStateTransactionProposalVoteDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateTransactionProposalVoteDtoBuilder();
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
