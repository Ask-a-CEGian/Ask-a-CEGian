import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MentorshipsRecord extends FirestoreRecord {
  MentorshipsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "started_time" field.
  DateTime? _startedTime;
  DateTime? get startedTime => _startedTime;
  bool hasStartedTime() => _startedTime != null;

  // "ongoing" field.
  bool? _ongoing;
  bool get ongoing => _ongoing ?? false;
  bool hasOngoing() => _ongoing != null;

  // "user_refs" field.
  List<DocumentReference>? _userRefs;
  List<DocumentReference> get userRefs => _userRefs ?? const [];
  bool hasUserRefs() => _userRefs != null;

  // "mentor_ref" field.
  DocumentReference? _mentorRef;
  DocumentReference? get mentorRef => _mentorRef;
  bool hasMentorRef() => _mentorRef != null;

  // "mentee_ref" field.
  DocumentReference? _menteeRef;
  DocumentReference? get menteeRef => _menteeRef;
  bool hasMenteeRef() => _menteeRef != null;

  void _initializeFields() {
    _startedTime = snapshotData['started_time'] as DateTime?;
    _ongoing = snapshotData['ongoing'] as bool?;
    _userRefs = getDataList(snapshotData['user_refs']);
    _mentorRef = snapshotData['mentor_ref'] as DocumentReference?;
    _menteeRef = snapshotData['mentee_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mentorships');

  static Stream<MentorshipsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MentorshipsRecord.fromSnapshot(s));

  static Future<MentorshipsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MentorshipsRecord.fromSnapshot(s));

  static MentorshipsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MentorshipsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MentorshipsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MentorshipsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MentorshipsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MentorshipsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMentorshipsRecordData({
  DateTime? startedTime,
  bool? ongoing,
  DocumentReference? mentorRef,
  DocumentReference? menteeRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'started_time': startedTime,
      'ongoing': ongoing,
      'mentor_ref': mentorRef,
      'mentee_ref': menteeRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class MentorshipsRecordDocumentEquality implements Equality<MentorshipsRecord> {
  const MentorshipsRecordDocumentEquality();

  @override
  bool equals(MentorshipsRecord? e1, MentorshipsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.startedTime == e2?.startedTime &&
        e1?.ongoing == e2?.ongoing &&
        listEquality.equals(e1?.userRefs, e2?.userRefs) &&
        e1?.mentorRef == e2?.mentorRef &&
        e1?.menteeRef == e2?.menteeRef;
  }

  @override
  int hash(MentorshipsRecord? e) => const ListEquality().hash(
      [e?.startedTime, e?.ongoing, e?.userRefs, e?.mentorRef, e?.menteeRef]);

  @override
  bool isValidKey(Object? o) => o is MentorshipsRecord;
}
