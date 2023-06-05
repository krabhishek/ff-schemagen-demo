import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DemographicDetailsRecord extends FirestoreRecord {
  DemographicDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "race" field.
  String? _race;
  String get race => _race ?? '';
  bool hasRace() => _race != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "income" field.
  double? _income;
  double get income => _income ?? 0.0;
  bool hasIncome() => _income != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _gender = snapshotData['gender'] as String?;
    _race = snapshotData['race'] as String?;
    _age = snapshotData['age'] as int?;
    _income = castToType<double>(snapshotData['income']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('demographicDetails')
          : FirebaseFirestore.instance.collectionGroup('demographicDetails');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('demographicDetails').doc();

  static Stream<DemographicDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DemographicDetailsRecord.fromSnapshot(s));

  static Future<DemographicDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DemographicDetailsRecord.fromSnapshot(s));

  static DemographicDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DemographicDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DemographicDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DemographicDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DemographicDetailsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createDemographicDetailsRecordData({
  String? gender,
  String? race,
  int? age,
  double? income,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gender': gender,
      'race': race,
      'age': age,
      'income': income,
    }.withoutNulls,
  );

  return firestoreData;
}
