import 'package:cloud_firestore/cloud_firestore.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/leads_record.dart';
import 'schema/source_record.dart';
import 'schema/home_loan_applications_record.dart';
import 'schema/demographic_details_record.dart';
import 'schema/personal_contact_information_record.dart';
import 'schema/income_details_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/leads_record.dart';
export 'schema/source_record.dart';
export 'schema/home_loan_applications_record.dart';
export 'schema/demographic_details_record.dart';
export 'schema/personal_contact_information_record.dart';
export 'schema/income_details_record.dart';

/// Functions to query LeadsRecords (as a Stream and as a Future).
Future<int> queryLeadsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LeadsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LeadsRecord>> queryLeadsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LeadsRecord.collection,
      LeadsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LeadsRecord>> queryLeadsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LeadsRecord.collection,
      LeadsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<LeadsRecord>> queryLeadsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      LeadsRecord.collection,
      LeadsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query SourceRecords (as a Stream and as a Future).
Future<int> querySourceRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SourceRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SourceRecord>> querySourceRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SourceRecord.collection(parent),
      SourceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SourceRecord>> querySourceRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SourceRecord.collection(parent),
      SourceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<SourceRecord>> querySourceRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      SourceRecord.collection(parent),
      SourceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HomeLoanApplicationsRecords (as a Stream and as a Future).
Future<int> queryHomeLoanApplicationsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HomeLoanApplicationsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HomeLoanApplicationsRecord>> queryHomeLoanApplicationsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HomeLoanApplicationsRecord.collection,
      HomeLoanApplicationsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HomeLoanApplicationsRecord>> queryHomeLoanApplicationsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HomeLoanApplicationsRecord.collection,
      HomeLoanApplicationsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HomeLoanApplicationsRecord>>
    queryHomeLoanApplicationsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          HomeLoanApplicationsRecord.collection,
          HomeLoanApplicationsRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query DemographicDetailsRecords (as a Stream and as a Future).
Future<int> queryDemographicDetailsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DemographicDetailsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DemographicDetailsRecord>> queryDemographicDetailsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DemographicDetailsRecord.collection(parent),
      DemographicDetailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DemographicDetailsRecord>> queryDemographicDetailsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DemographicDetailsRecord.collection(parent),
      DemographicDetailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<DemographicDetailsRecord>>
    queryDemographicDetailsRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          DemographicDetailsRecord.collection(parent),
          DemographicDetailsRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query PersonalContactInformationRecords (as a Stream and as a Future).
Future<int> queryPersonalContactInformationRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PersonalContactInformationRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PersonalContactInformationRecord>>
    queryPersonalContactInformationRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          PersonalContactInformationRecord.collection(parent),
          PersonalContactInformationRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<PersonalContactInformationRecord>>
    queryPersonalContactInformationRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          PersonalContactInformationRecord.collection(parent),
          PersonalContactInformationRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<FFFirestorePage<PersonalContactInformationRecord>>
    queryPersonalContactInformationRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          PersonalContactInformationRecord.collection(parent),
          PersonalContactInformationRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query IncomeDetailsRecords (as a Stream and as a Future).
Future<int> queryIncomeDetailsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IncomeDetailsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IncomeDetailsRecord>> queryIncomeDetailsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      IncomeDetailsRecord.collection(parent),
      IncomeDetailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<IncomeDetailsRecord>> queryIncomeDetailsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      IncomeDetailsRecord.collection(parent),
      IncomeDetailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<IncomeDetailsRecord>> queryIncomeDetailsRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      IncomeDetailsRecord.collection(parent),
      IncomeDetailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}
