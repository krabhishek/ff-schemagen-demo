import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SourceRecord extends FirestoreRecord {
  SourceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('source')
          : FirebaseFirestore.instance.collectionGroup('source');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('source').doc();

  static Stream<SourceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SourceRecord.fromSnapshot(s));

  static Future<SourceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SourceRecord.fromSnapshot(s));

  static SourceRecord fromSnapshot(DocumentSnapshot snapshot) => SourceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SourceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SourceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SourceRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSourceRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}
