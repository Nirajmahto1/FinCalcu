import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricesDataRecord extends FirestoreRecord {
  PricesDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  bool hasDiscount() => _discount != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _price = castToType<int>(snapshotData['price']);
    _discount = castToType<double>(snapshotData['discount']);
    _active = snapshotData['active'] as bool?;
    _id = castToType<int>(snapshotData['id']);
    _details = snapshotData['details'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prices_data');

  static Stream<PricesDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PricesDataRecord.fromSnapshot(s));

  static Future<PricesDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PricesDataRecord.fromSnapshot(s));

  static PricesDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PricesDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricesDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricesDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricesDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricesDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricesDataRecordData({
  int? price,
  double? discount,
  bool? active,
  int? id,
  String? details,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'discount': discount,
      'active': active,
      'id': id,
      'details': details,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class PricesDataRecordDocumentEquality implements Equality<PricesDataRecord> {
  const PricesDataRecordDocumentEquality();

  @override
  bool equals(PricesDataRecord? e1, PricesDataRecord? e2) {
    return e1?.price == e2?.price &&
        e1?.discount == e2?.discount &&
        e1?.active == e2?.active &&
        e1?.id == e2?.id &&
        e1?.details == e2?.details &&
        e1?.name == e2?.name;
  }

  @override
  int hash(PricesDataRecord? e) => const ListEquality()
      .hash([e?.price, e?.discount, e?.active, e?.id, e?.details, e?.name]);

  @override
  bool isValidKey(Object? o) => o is PricesDataRecord;
}
