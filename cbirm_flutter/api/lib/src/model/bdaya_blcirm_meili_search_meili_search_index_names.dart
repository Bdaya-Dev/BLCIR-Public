//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_meili_search_meili_search_index_names.g.dart';

/// BdayaBLCIRMMeiliSearchMeiliSearchIndexNames
///
/// Properties:
/// * [tenants]
/// * [loans]
/// * [documents]
/// * [people]
@BuiltValue()
abstract class BdayaBLCIRMMeiliSearchMeiliSearchIndexNames
    implements
        Built<BdayaBLCIRMMeiliSearchMeiliSearchIndexNames,
            BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder> {
  @BuiltValueField(wireName: r'Tenants')
  String? get tenants;

  @BuiltValueField(wireName: r'Loans')
  String? get loans;

  @BuiltValueField(wireName: r'Documents')
  String? get documents;

  @BuiltValueField(wireName: r'People')
  String? get people;

  BdayaBLCIRMMeiliSearchMeiliSearchIndexNames._();

  factory BdayaBLCIRMMeiliSearchMeiliSearchIndexNames(
          [void updates(
              BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder b)]) =
      _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMMeiliSearchMeiliSearchIndexNames>
      get serializer =>
          _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesSerializer();
}

class _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesSerializer
    implements
        PrimitiveSerializer<BdayaBLCIRMMeiliSearchMeiliSearchIndexNames> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMMeiliSearchMeiliSearchIndexNames,
    _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames
  ];

  @override
  final String wireName = r'BdayaBLCIRMMeiliSearchMeiliSearchIndexNames';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMMeiliSearchMeiliSearchIndexNames object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenants != null) {
      yield r'Tenants';
      yield serializers.serialize(
        object.tenants,
        specifiedType: const FullType(String),
      );
    }
    if (object.loans != null) {
      yield r'Loans';
      yield serializers.serialize(
        object.loans,
        specifiedType: const FullType(String),
      );
    }
    if (object.documents != null) {
      yield r'Documents';
      yield serializers.serialize(
        object.documents,
        specifiedType: const FullType(String),
      );
    }
    if (object.people != null) {
      yield r'People';
      yield serializers.serialize(
        object.people,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMMeiliSearchMeiliSearchIndexNames object, {
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
    required BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Tenants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenants = valueDes;
          break;
        case r'Loans':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.loans = valueDes;
          break;
        case r'Documents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.documents = valueDes;
          break;
        case r'People':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.people = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMMeiliSearchMeiliSearchIndexNames deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder();
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
