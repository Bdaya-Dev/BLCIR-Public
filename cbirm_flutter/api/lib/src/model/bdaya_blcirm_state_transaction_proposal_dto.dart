//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_proposal_vote_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_transaction_proposal_dto.g.dart';

/// BdayaBLCIRMStateTransactionProposalDto
///
/// Properties:
/// * [id]
/// * [creationTime]
/// * [creatorId]
/// * [lastModificationTime]
/// * [lastModifierId]
/// * [tenantId]
/// * [info]
/// * [calculatedHash]
/// * [votes]
/// * [completionResult]
/// * [completedAt]
@BuiltValue()
abstract class BdayaBLCIRMStateTransactionProposalDto
    implements
        Built<BdayaBLCIRMStateTransactionProposalDto,
            BdayaBLCIRMStateTransactionProposalDtoBuilder> {
  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'CreationTime')
  DateTime? get creationTime;

  @BuiltValueField(wireName: r'CreatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'LastModificationTime')
  DateTime? get lastModificationTime;

  @BuiltValueField(wireName: r'LastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'TenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStateTransactionInfoDto? get info;

  @BuiltValueField(wireName: r'CalculatedHash')
  String? get calculatedHash;

  @BuiltValueField(wireName: r'Votes')
  BuiltList<BdayaBLCIRMStateTransactionProposalVoteDto>? get votes;

  @BuiltValueField(wireName: r'CompletionResult')
  bool? get completionResult;

  @BuiltValueField(wireName: r'CompletedAt')
  DateTime? get completedAt;

  BdayaBLCIRMStateTransactionProposalDto._();

  factory BdayaBLCIRMStateTransactionProposalDto(
          [void updates(BdayaBLCIRMStateTransactionProposalDtoBuilder b)]) =
      _$BdayaBLCIRMStateTransactionProposalDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateTransactionProposalDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateTransactionProposalDto> get serializer =>
      _$BdayaBLCIRMStateTransactionProposalDtoSerializer();
}

class _$BdayaBLCIRMStateTransactionProposalDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateTransactionProposalDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateTransactionProposalDto,
    _$BdayaBLCIRMStateTransactionProposalDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateTransactionProposalDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateTransactionProposalDto object, {
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
    if (object.lastModificationTime != null) {
      yield r'LastModificationTime';
      yield serializers.serialize(
        object.lastModificationTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastModifierId != null) {
      yield r'LastModifierId';
      yield serializers.serialize(
        object.lastModifierId,
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
    if (object.info != null) {
      yield r'Info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(BdayaBLCIRMStateTransactionInfoDto),
      );
    }
    if (object.calculatedHash != null) {
      yield r'CalculatedHash';
      yield serializers.serialize(
        object.calculatedHash,
        specifiedType: const FullType(String),
      );
    }
    if (object.votes != null) {
      yield r'Votes';
      yield serializers.serialize(
        object.votes,
        specifiedType: const FullType(
            BuiltList, [FullType(BdayaBLCIRMStateTransactionProposalVoteDto)]),
      );
    }
    if (object.completionResult != null) {
      yield r'CompletionResult';
      yield serializers.serialize(
        object.completionResult,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.completedAt != null) {
      yield r'CompletedAt';
      yield serializers.serialize(
        object.completedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateTransactionProposalDto object, {
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
    required BdayaBLCIRMStateTransactionProposalDtoBuilder result,
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
        case r'LastModificationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastModificationTime = valueDes;
          break;
        case r'LastModifierId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastModifierId = valueDes;
          break;
        case r'TenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantId = valueDes;
          break;
        case r'Info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateTransactionInfoDto),
          ) as BdayaBLCIRMStateTransactionInfoDto;
          result.info = valueDes;
          break;
        case r'CalculatedHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.calculatedHash = valueDes;
          break;
        case r'Votes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList,
                [FullType(BdayaBLCIRMStateTransactionProposalVoteDto)]),
          ) as BuiltList<BdayaBLCIRMStateTransactionProposalVoteDto>;
          result.votes.replace(valueDes);
          break;
        case r'CompletionResult':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.completionResult = valueDes;
          break;
        case r'CompletedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.completedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateTransactionProposalDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateTransactionProposalDtoBuilder();
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
