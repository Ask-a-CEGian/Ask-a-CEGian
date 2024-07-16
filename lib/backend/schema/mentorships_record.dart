import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MentorshipsRecord extends FirestoreRecord {
  MentorshipsRecord._(
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

  // "started_time" field.
  DateTime? _startedTime;
  DateTime? get startedTime => _startedTime;
  bool hasStartedTime() => _startedTime != null;

  void _initializeFields() {
    _mentorRef = snapshotData['mentor_ref'] as DocumentReference?;
    _menteeRef = snapshotData['mentee_ref'] as DocumentReference?;
    _startedTime = snapshotData['started_time'] as DateTime?;
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
  DocumentReference? mentorRef,
  DocumentReference? menteeRef,
  DateTime? startedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mentor_ref': mentorRef,
      'mentee_ref': menteeRef,
      'started_time': startedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class MentorshipsRecordDocumentEquality implements Equality<MentorshipsRecord> {
  const MentorshipsRecordDocumentEquality();

  @override
  bool equals(MentorshipsRecord? e1, MentorshipsRecord? e2) {
    return e1?.mentorRef == e2?.mentorRef &&
        e1?.menteeRef == e2?.menteeRef &&
        e1?.startedTime == e2?.startedTime;
  }

  @override
  int hash(MentorshipsRecord? e) =>
      const ListEquality().hash([e?.mentorRef, e?.menteeRef, e?.startedTime]);

  @override
  bool isValidKey(Object? o) => o is MentorshipsRecord;
}
