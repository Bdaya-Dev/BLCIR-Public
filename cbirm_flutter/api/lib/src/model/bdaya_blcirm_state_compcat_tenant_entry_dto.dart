//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_compcat_tenant_entry_dto.g.dart';

/// BdayaBLCIRMStateCompcatTenantEntryDto
///
/// Properties:
/// * [id]
/// * [tenantId]
/// * [name]
/// * [ownedQuantity]
/// * [loanedQuantity]
/// * [availableQuantity]
/// * [isAvailableOnline]
@BuiltValue()
abstract class BdayaBLCIRMStateCompcatTenantEntryDto
    implements
        Built<BdayaBLCIRMStateCompcatTenantEntryDto,
            BdayaBLCIRMStateCompcatTenantEntryDtoBuilder> {
  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'TenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'OwnedQuantity')
  int? get ownedQuantity;

  @BuiltValueField(wireName: r'LoanedQuantity')
  int? get loanedQuantity;

  @BuiltValueField(wireName: r'AvailableQuantity')
  int? get availableQuantity;

  @BuiltValueField(wireName: r'IsAvailableOnline')
  bool? get isAvailableOnline;

  BdayaBLCIRMStateCompcatTenantEntryDto._();

  factory BdayaBLCIRMStateCompcatTenantEntryDto(
          [void updates(BdayaBLCIRMStateCompcatTenantEntryDtoBuilder b)]) =
      _$BdayaBLCIRMStateCompcatTenantEntryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateCompcatTenantEntryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateCompcatTenantEntryDto> get serializer =>
      _$BdayaBLCIRMStateCompcatTenantEntryDtoSerializer();
}

class _$BdayaBLCIRMStateCompcatTenantEntryDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateCompcatTenantEntryDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateCompcatTenantEntryDto,
    _$BdayaBLCIRMStateCompcatTenantEntryDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateCompcatTenantEntryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateCompcatTenantEntryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'Id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.tenantId != null) {
      yield r'TenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownedQuantity != null) {
      yield r'OwnedQuantity';
      yield serializers.serialize(
        object.ownedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.loanedQuantity != null) {
      yield r'LoanedQuantity';
      yield serializers.serialize(
        object.loanedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.availableQuantity != null) {
      yield r'AvailableQuantity';
      yield serializers.serialize(
        object.availableQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.isAvailableOnline != null) {
      yield r'IsAvailableOnline';
      yield serializers.serialize(
        object.isAvailableOnline,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateCompcatTenantEntryDto object, {
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
    required BdayaBLCIRMStateCompcatTenantEntryDtoBuilder result,
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
        case r'TenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantId = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'OwnedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ownedQuantity = valueDes;
          break;
        case r'LoanedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loanedQuantity = valueDes;
          break;
        case r'AvailableQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availableQuantity = valueDes;
          break;
        case r'IsAvailableOnline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAvailableOnline = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateCompcatTenantEntryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateCompcatTenantEntryDtoBuilder();
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
