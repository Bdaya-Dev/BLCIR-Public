//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_create_author_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_update_person_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_update_own_entry_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_return_loan_physical_documents_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_create_person_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_transfer_physical_documents_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_loan_physical_documents_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_delete_document_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_create_document_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_register_document_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_delete_person_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_update_author_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_update_document_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_transaction_info_dto.g.dart';

/// BdayaBLCIRMStateTransactionInfoDto
///
/// Properties:
/// * [dollarType]
@BuiltValue(instantiable: false)
abstract class BdayaBLCIRMStateTransactionInfoDto {
  @BuiltValueField(wireName: r'$type')
  String? get dollarType;

  static const String discriminatorFieldName = r'$type';

  static const Map<String, Type> discriminatorMapping = {
    r'create-author': BdayaBLCIRMCreateAuthorTransactionInfoDto,
    r'create-document': BdayaBLCIRMCreateDocumentTransactionInfoDto,
    r'create-person': BdayaBLCIRMCreatePersonTransactionInfoDto,
    r'delete-document': BdayaBLCIRMDeleteDocumentTransactionInfoDto,
    r'delete-person': BdayaBLCIRMDeletePersonTransactionInfoDto,
    r'loan-document': BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto,
    r'register-document': BdayaBLCIRMRegisterDocumentTransactionInfoDto,
    r'return-loan-document':
        BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto,
    r'transfer-document':
        BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto,
    r'update-author': BdayaBLCIRMUpdateAuthorTransactionInfoDto,
    r'update-document': BdayaBLCIRMUpdateDocumentTransactionInfoDto,
    r'update-own-entry': BdayaBLCIRMUpdateOwnEntryTransactionInfoDto,
    r'update-person': BdayaBLCIRMUpdatePersonTransactionInfoDto,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateTransactionInfoDto> get serializer =>
      _$BdayaBLCIRMStateTransactionInfoDtoSerializer();
}

extension BdayaBLCIRMStateTransactionInfoDtoDiscriminatorExt
    on BdayaBLCIRMStateTransactionInfoDto {
  String? get discriminatorValue {
    if (this is BdayaBLCIRMCreateAuthorTransactionInfoDto) {
      return r'create-author';
    }
    if (this is BdayaBLCIRMCreateDocumentTransactionInfoDto) {
      return r'create-document';
    }
    if (this is BdayaBLCIRMCreatePersonTransactionInfoDto) {
      return r'create-person';
    }
    if (this is BdayaBLCIRMDeleteDocumentTransactionInfoDto) {
      return r'delete-document';
    }
    if (this is BdayaBLCIRMDeletePersonTransactionInfoDto) {
      return r'delete-person';
    }
    if (this is BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto) {
      return r'loan-document';
    }
    if (this is BdayaBLCIRMRegisterDocumentTransactionInfoDto) {
      return r'register-document';
    }
    if (this is BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto) {
      return r'return-loan-document';
    }
    if (this is BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto) {
      return r'transfer-document';
    }
    if (this is BdayaBLCIRMUpdateAuthorTransactionInfoDto) {
      return r'update-author';
    }
    if (this is BdayaBLCIRMUpdateDocumentTransactionInfoDto) {
      return r'update-document';
    }
    if (this is BdayaBLCIRMUpdateOwnEntryTransactionInfoDto) {
      return r'update-own-entry';
    }
    if (this is BdayaBLCIRMUpdatePersonTransactionInfoDto) {
      return r'update-person';
    }
    return null;
  }
}

extension BdayaBLCIRMStateTransactionInfoDtoBuilderDiscriminatorExt
    on BdayaBLCIRMStateTransactionInfoDtoBuilder {
  String? get discriminatorValue {
    if (this is BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder) {
      return r'create-author';
    }
    if (this is BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder) {
      return r'create-document';
    }
    if (this is BdayaBLCIRMCreatePersonTransactionInfoDtoBuilder) {
      return r'create-person';
    }
    if (this is BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder) {
      return r'delete-document';
    }
    if (this is BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder) {
      return r'delete-person';
    }
    if (this is BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder) {
      return r'loan-document';
    }
    if (this is BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder) {
      return r'register-document';
    }
    if (this
        is BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder) {
      return r'return-loan-document';
    }
    if (this is BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder) {
      return r'transfer-document';
    }
    if (this is BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder) {
      return r'update-author';
    }
    if (this is BdayaBLCIRMUpdateDocumentTransactionInfoDtoBuilder) {
      return r'update-document';
    }
    if (this is BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder) {
      return r'update-own-entry';
    }
    if (this is BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder) {
      return r'update-person';
    }
    return null;
  }
}

class _$BdayaBLCIRMStateTransactionInfoDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [BdayaBLCIRMStateTransactionInfoDto];

  @override
  final String wireName = r'BdayaBLCIRMStateTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dollarType != null) {
      yield r'$type';
      yield serializers.serialize(
        object.dollarType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is BdayaBLCIRMCreateAuthorTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType: FullType(BdayaBLCIRMCreateAuthorTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMCreateDocumentTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType:
              FullType(BdayaBLCIRMCreateDocumentTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMCreatePersonTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType: FullType(BdayaBLCIRMCreatePersonTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMDeleteDocumentTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType:
              FullType(BdayaBLCIRMDeleteDocumentTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMDeletePersonTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType: FullType(BdayaBLCIRMDeletePersonTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType:
              FullType(BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMRegisterDocumentTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType:
              FullType(BdayaBLCIRMRegisterDocumentTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType: FullType(
              BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType: FullType(
              BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMUpdateAuthorTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType: FullType(BdayaBLCIRMUpdateAuthorTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMUpdateDocumentTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType:
              FullType(BdayaBLCIRMUpdateDocumentTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMUpdateOwnEntryTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType:
              FullType(BdayaBLCIRMUpdateOwnEntryTransactionInfoDto))!;
    }
    if (object is BdayaBLCIRMUpdatePersonTransactionInfoDto) {
      return serializers.serialize(object,
          specifiedType: FullType(BdayaBLCIRMUpdatePersonTransactionInfoDto))!;
    }
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  BdayaBLCIRMStateTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(
            BdayaBLCIRMStateTransactionInfoDto.discriminatorFieldName) +
        1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'create-author':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMCreateAuthorTransactionInfoDto))
            as BdayaBLCIRMCreateAuthorTransactionInfoDto;
      case r'create-document':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMCreateDocumentTransactionInfoDto))
            as BdayaBLCIRMCreateDocumentTransactionInfoDto;
      case r'create-person':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMCreatePersonTransactionInfoDto))
            as BdayaBLCIRMCreatePersonTransactionInfoDto;
      case r'delete-document':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMDeleteDocumentTransactionInfoDto))
            as BdayaBLCIRMDeleteDocumentTransactionInfoDto;
      case r'delete-person':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMDeletePersonTransactionInfoDto))
            as BdayaBLCIRMDeletePersonTransactionInfoDto;
      case r'loan-document':
        return serializers.deserialize(serialized,
                specifiedType: FullType(
                    BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto))
            as BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto;
      case r'register-document':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMRegisterDocumentTransactionInfoDto))
            as BdayaBLCIRMRegisterDocumentTransactionInfoDto;
      case r'return-loan-document':
        return serializers.deserialize(serialized,
                specifiedType: FullType(
                    BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto))
            as BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto;
      case r'transfer-document':
        return serializers.deserialize(serialized,
                specifiedType: FullType(
                    BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto))
            as BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto;
      case r'update-author':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMUpdateAuthorTransactionInfoDto))
            as BdayaBLCIRMUpdateAuthorTransactionInfoDto;
      case r'update-document':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMUpdateDocumentTransactionInfoDto))
            as BdayaBLCIRMUpdateDocumentTransactionInfoDto;
      case r'update-own-entry':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMUpdateOwnEntryTransactionInfoDto))
            as BdayaBLCIRMUpdateOwnEntryTransactionInfoDto;
      case r'update-person':
        return serializers.deserialize(serialized,
                specifiedType:
                    FullType(BdayaBLCIRMUpdatePersonTransactionInfoDto))
            as BdayaBLCIRMUpdatePersonTransactionInfoDto;
      default:
        return serializers.deserialize(serialized,
                specifiedType: FullType($BdayaBLCIRMStateTransactionInfoDto))
            as $BdayaBLCIRMStateTransactionInfoDto;
    }
  }
}

/// a concrete implementation of [BdayaBLCIRMStateTransactionInfoDto], since [BdayaBLCIRMStateTransactionInfoDto] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BdayaBLCIRMStateTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<$BdayaBLCIRMStateTransactionInfoDto,
            $BdayaBLCIRMStateTransactionInfoDtoBuilder> {
  $BdayaBLCIRMStateTransactionInfoDto._();

  factory $BdayaBLCIRMStateTransactionInfoDto(
      [void Function($BdayaBLCIRMStateTransactionInfoDtoBuilder)?
          updates]) = _$$BdayaBLCIRMStateTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BdayaBLCIRMStateTransactionInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BdayaBLCIRMStateTransactionInfoDto> get serializer =>
      _$$BdayaBLCIRMStateTransactionInfoDtoSerializer();
}

class _$$BdayaBLCIRMStateTransactionInfoDtoSerializer
    implements PrimitiveSerializer<$BdayaBLCIRMStateTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    $BdayaBLCIRMStateTransactionInfoDto,
    _$$BdayaBLCIRMStateTransactionInfoDto
  ];

  @override
  final String wireName = r'$BdayaBLCIRMStateTransactionInfoDto';

  @override
  Object serialize(
    Serializers serializers,
    $BdayaBLCIRMStateTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(BdayaBLCIRMStateTransactionInfoDto))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BdayaBLCIRMStateTransactionInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'$type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dollarType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $BdayaBLCIRMStateTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BdayaBLCIRMStateTransactionInfoDtoBuilder();
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
