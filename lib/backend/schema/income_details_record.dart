import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncomeDetailsRecord extends FirestoreRecord {
  IncomeDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "employmentIncome" field.
  double? _employmentIncome;
  double get employmentIncome => _employmentIncome ?? 0.0;
  bool hasEmploymentIncome() => _employmentIncome != null;

  // "investmentIncome" field.
  double? _investmentIncome;
  double get investmentIncome => _investmentIncome ?? 0.0;
  bool hasInvestmentIncome() => _investmentIncome != null;

  // "unearnedIncome" field.
  double? _unearnedIncome;
  double get unearnedIncome => _unearnedIncome ?? 0.0;
  bool hasUnearnedIncome() => _unearnedIncome != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _employmentIncome = castToType<double>(snapshotData['employmentIncome']);
    _investmentIncome = castToType<double>(snapshotData['investmentIncome']);
    _unearnedIncome = castToType<double>(snapshotData['unearnedIncome']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('incomeDetails')
          : FirebaseFirestore.instance.collectionGroup('incomeDetails');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('incomeDetails').doc();

  static Stream<IncomeDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncomeDetailsRecord.fromSnapshot(s));

  static Future<IncomeDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IncomeDetailsRecord.fromSnapshot(s));

  static IncomeDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IncomeDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncomeDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncomeDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncomeDetailsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createIncomeDetailsRecordData({
  double? employmentIncome,
  double? investmentIncome,
  double? unearnedIncome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'employmentIncome': employmentIncome,
      'investmentIncome': investmentIncome,
      'unearnedIncome': unearnedIncome,
    }.withoutNulls,
  );

  return firestoreData;
}
