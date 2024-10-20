import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRequestRecord extends FirestoreRecord {
  UserRequestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  bool hasService() => _service != null;

  // "approved" field.
  int? _approved;
  int get approved => _approved ?? 0;
  bool hasApproved() => _approved != null;

  // "active" field.
  int? _active;
  int get active => _active ?? 0;
  bool hasActive() => _active != null;

  // "budget" field.
  int? _budget;
  int get budget => _budget ?? 0;
  bool hasBudget() => _budget != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "admin_budget" field.
  int? _adminBudget;
  int get adminBudget => _adminBudget ?? 0;
  bool hasAdminBudget() => _adminBudget != null;

  // "recep" field.
  int? _recep;
  int get recep => _recep ?? 0;
  bool hasRecep() => _recep != null;

  void _initializeFields() {
    _address = snapshotData['address'] as String?;
    _number = castToType<int>(snapshotData['number']);
    _name = snapshotData['name'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _service = snapshotData['service'] as String?;
    _approved = castToType<int>(snapshotData['approved']);
    _active = castToType<int>(snapshotData['active']);
    _budget = castToType<int>(snapshotData['budget']);
    _id = castToType<int>(snapshotData['id']);
    _adminBudget = castToType<int>(snapshotData['admin_budget']);
    _recep = castToType<int>(snapshotData['recep']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_request');

  static Stream<UserRequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRequestRecord.fromSnapshot(s));

  static Future<UserRequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRequestRecord.fromSnapshot(s));

  static UserRequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRequestRecordData({
  String? address,
  int? number,
  String? name,
  DateTime? date,
  String? email,
  String? service,
  int? approved,
  int? active,
  int? budget,
  int? id,
  int? adminBudget,
  int? recep,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': address,
      'number': number,
      'name': name,
      'date': date,
      'email': email,
      'service': service,
      'approved': approved,
      'active': active,
      'budget': budget,
      'id': id,
      'admin_budget': adminBudget,
      'recep': recep,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRequestRecordDocumentEquality implements Equality<UserRequestRecord> {
  const UserRequestRecordDocumentEquality();

  @override
  bool equals(UserRequestRecord? e1, UserRequestRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.number == e2?.number &&
        e1?.name == e2?.name &&
        e1?.date == e2?.date &&
        e1?.email == e2?.email &&
        e1?.service == e2?.service &&
        e1?.approved == e2?.approved &&
        e1?.active == e2?.active &&
        e1?.budget == e2?.budget &&
        e1?.id == e2?.id &&
        e1?.adminBudget == e2?.adminBudget &&
        e1?.recep == e2?.recep;
  }

  @override
  int hash(UserRequestRecord? e) => const ListEquality().hash([
        e?.address,
        e?.number,
        e?.name,
        e?.date,
        e?.email,
        e?.service,
        e?.approved,
        e?.active,
        e?.budget,
        e?.id,
        e?.adminBudget,
        e?.recep
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRequestRecord;
}
