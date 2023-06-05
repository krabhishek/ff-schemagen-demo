import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonalContactInformationRecord extends FirestoreRecord {
  PersonalContactInformationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  bool hasZip() => _zip != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zip = snapshotData['zip'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _emailAddress = snapshotData['emailAddress'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('personalContactInformation')
          : FirebaseFirestore.instance
              .collectionGroup('personalContactInformation');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('personalContactInformation').doc();

  static Stream<PersonalContactInformationRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => PersonalContactInformationRecord.fromSnapshot(s));

  static Future<PersonalContactInformationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PersonalContactInformationRecord.fromSnapshot(s));

  static PersonalContactInformationRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      PersonalContactInformationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonalContactInformationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonalContactInformationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonalContactInformationRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPersonalContactInformationRecordData({
  String? address,
  String? city,
  String? state,
  String? zip,
  String? phoneNumber,
  String? emailAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': address,
      'city': city,
      'state': state,
      'zip': zip,
      'phoneNumber': phoneNumber,
      'emailAddress': emailAddress,
    }.withoutNulls,
  );

  return firestoreData;
}
