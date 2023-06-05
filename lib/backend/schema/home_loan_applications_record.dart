import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomeLoanApplicationsRecord extends FirestoreRecord {
  HomeLoanApplicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "loanAmount" field.
  double? _loanAmount;
  double get loanAmount => _loanAmount ?? 0.0;
  bool hasLoanAmount() => _loanAmount != null;

  // "downPayment" field.
  double? _downPayment;
  double get downPayment => _downPayment ?? 0.0;
  bool hasDownPayment() => _downPayment != null;

  // "interestRate" field.
  double? _interestRate;
  double get interestRate => _interestRate ?? 0.0;
  bool hasInterestRate() => _interestRate != null;

  // "term" field.
  int? _term;
  int get term => _term ?? 0;
  bool hasTerm() => _term != null;

  // "loanType" field.
  String? _loanType;
  String get loanType => _loanType ?? '';
  bool hasLoanType() => _loanType != null;

  // "loanPurpose" field.
  String? _loanPurpose;
  String get loanPurpose => _loanPurpose ?? '';
  bool hasLoanPurpose() => _loanPurpose != null;

  void _initializeFields() {
    _loanAmount = castToType<double>(snapshotData['loanAmount']);
    _downPayment = castToType<double>(snapshotData['downPayment']);
    _interestRate = castToType<double>(snapshotData['interestRate']);
    _term = snapshotData['term'] as int?;
    _loanType = snapshotData['loanType'] as String?;
    _loanPurpose = snapshotData['loanPurpose'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('home_loan_applications');

  static Stream<HomeLoanApplicationsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => HomeLoanApplicationsRecord.fromSnapshot(s));

  static Future<HomeLoanApplicationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HomeLoanApplicationsRecord.fromSnapshot(s));

  static HomeLoanApplicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HomeLoanApplicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HomeLoanApplicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HomeLoanApplicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HomeLoanApplicationsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHomeLoanApplicationsRecordData({
  double? loanAmount,
  double? downPayment,
  double? interestRate,
  int? term,
  String? loanType,
  String? loanPurpose,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'loanAmount': loanAmount,
      'downPayment': downPayment,
      'interestRate': interestRate,
      'term': term,
      'loanType': loanType,
      'loanPurpose': loanPurpose,
    }.withoutNulls,
  );

  return firestoreData;
}
