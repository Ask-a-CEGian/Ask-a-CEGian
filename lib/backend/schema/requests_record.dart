import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
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

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "request_state" field.
  RequestState? _requestState;
  RequestState? get requestState => _requestState;
  bool hasRequestState() => _requestState != null;

  // "response_time" field.
  DateTime? _responseTime;
  DateTime? get responseTime => _responseTime;
  bool hasResponseTime() => _responseTime != null;

  // "user_refs" field.
  List<DocumentReference>? _userRefs;
  List<DocumentReference> get userRefs => _userRefs ?? const [];
  bool hasUserRefs() => _userRefs != null;

  // "mentee_ref" field.
  DocumentReference? _menteeRef;
  DocumentReference? get menteeRef => _menteeRef;
  bool hasMenteeRef() => _menteeRef != null;

  // "mentor_ref" field.
  DocumentReference? _mentorRef;
  DocumentReference? get mentorRef => _mentorRef;
  bool hasMentorRef() => _mentorRef != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _requestState =
        deserializeEnum<RequestState>(snapshotData['request_state']);
    _responseTime = snapshotData['response_time'] as DateTime?;
    _userRefs = getDataList(snapshotData['user_refs']);
    _menteeRef = snapshotData['mentee_ref'] as DocumentReference?;
    _mentorRef = snapshotData['mentor_ref'] as DocumentReference?;
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
  DateTime? createdTime,
  RequestState? requestState,
  DateTime? responseTime,
  DocumentReference? menteeRef,
  DocumentReference? mentorRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'request_state': requestState,
      'response_time': responseTime,
      'mentee_ref': menteeRef,
      'mentor_ref': mentorRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestsRecordDocumentEquality implements Equality<RequestsRecord> {
  const RequestsRecordDocumentEquality();

  @override
  bool equals(RequestsRecord? e1, RequestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdTime == e2?.createdTime &&
        e1?.requestState == e2?.requestState &&
        e1?.responseTime == e2?.responseTime &&
        listEquality.equals(e1?.userRefs, e2?.userRefs) &&
        e1?.menteeRef == e2?.menteeRef &&
        e1?.mentorRef == e2?.mentorRef;
  }

  @override
  int hash(RequestsRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.requestState,
        e?.responseTime,
        e?.userRefs,
        e?.menteeRef,
        e?.mentorRef
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestsRecord;
}
