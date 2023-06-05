import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeadsRecord extends FirestoreRecord {
  LeadsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "source" field.
  DocumentReference? _source;
  DocumentReference? get source => _source;
  bool hasSource() => _source != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _source = snapshotData['source'] as DocumentReference?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _emailAddress = snapshotData['emailAddress'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leads');

  static Stream<LeadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeadsRecord.fromSnapshot(s));

  static Future<LeadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeadsRecord.fromSnapshot(s));

  static LeadsRecord fromSnapshot(DocumentSnapshot snapshot) => LeadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeadsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createLeadsRecordData({
  DocumentReference? source,
  String? phoneNumber,
  String? emailAddress,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'source': source,
      'phoneNumber': phoneNumber,
      'emailAddress': emailAddress,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}
