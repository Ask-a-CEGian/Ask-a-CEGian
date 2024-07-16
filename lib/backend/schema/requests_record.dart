import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestsRecord extends FirestoreRecord {
  RequestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mentor_ref" field.
  DocumentReference? _mentorRef;
  DocumentReference? get mentorRef => _mentorRef;
  bool hasMentorRef() => _mentorRef != null;

  // "mentee_ref" field.
  DocumentReference? _menteeRef;
  DocumentReference? get menteeRef => _menteeRef;
  bool hasMenteeRef() => _menteeRef != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "request_state" field.
  RequestState? _requestState;
  RequestState? get requestState => _requestState;
  bool hasRequestState() => _requestState != null;

  void _initializeFields() {
    _mentorRef = snapshotData['mentor_ref'] as DocumentReference?;
    _menteeRef = snapshotData['mentee_ref'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _requestState =
        deserializeEnum<RequestState>(snapshotData['request_state']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestsRecord.fromSnapshot(s));

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestsRecord.fromSnapshot(s));

  static RequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestsRecordData({
  DocumentReference? mentorRef,
  DocumentReference? menteeRef,
  DateTime? createdTime,
  RequestState? requestState,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mentor_ref': mentorRef,
      'mentee_ref': menteeRef,
      'created_time': createdTime,
      'request_state': requestState,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestsRecordDocumentEquality implements Equality<RequestsRecord> {
  const RequestsRecordDocumentEquality();

  @override
  bool equals(RequestsRecord? e1, RequestsRecord? e2) {
    return e1?.mentorRef == e2?.mentorRef &&
        e1?.menteeRef == e2?.menteeRef &&
        e1?.createdTime == e2?.createdTime &&
        e1?.requestState == e2?.requestState;
  }

  @override
  int hash(RequestsRecord? e) => const ListEquality()
      .hash([e?.mentorRef, e?.menteeRef, e?.createdTime, e?.requestState]);

  @override
  bool isValidKey(Object? o) => o is RequestsRecord;
}
