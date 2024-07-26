import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingsRecord extends FirestoreRecord {
  MeetingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_user" field.
  DocumentReference? _createdUser;
  DocumentReference? get createdUser => _createdUser;
  bool hasCreatedUser() => _createdUser != null;

  // "agenda" field.
  String? _agenda;
  String get agenda => _agenda ?? '';
  bool hasAgenda() => _agenda != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "accepted_users" field.
  List<DocumentReference>? _acceptedUsers;
  List<DocumentReference> get acceptedUsers => _acceptedUsers ?? const [];
  bool hasAcceptedUsers() => _acceptedUsers != null;

  // "receiver_state" field.
  RequestState? _receiverState;
  RequestState? get receiverState => _receiverState;
  bool hasReceiverState() => _receiverState != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdUser = snapshotData['created_user'] as DocumentReference?;
    _agenda = snapshotData['agenda'] as String?;
    _details = snapshotData['details'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _acceptedUsers = getDataList(snapshotData['accepted_users']);
    _receiverState =
        deserializeEnum<RequestState>(snapshotData['receiver_state']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('meetings')
          : FirebaseFirestore.instance.collectionGroup('meetings');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('meetings').doc(id);

  static Stream<MeetingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeetingsRecord.fromSnapshot(s));

  static Future<MeetingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeetingsRecord.fromSnapshot(s));

  static MeetingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetingsRecordData({
  DocumentReference? createdUser,
  String? agenda,
  String? details,
  DateTime? startTime,
  DateTime? endTime,
  RequestState? receiverState,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_user': createdUser,
      'agenda': agenda,
      'details': details,
      'start_time': startTime,
      'end_time': endTime,
      'receiver_state': receiverState,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeetingsRecordDocumentEquality implements Equality<MeetingsRecord> {
  const MeetingsRecordDocumentEquality();

  @override
  bool equals(MeetingsRecord? e1, MeetingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdUser == e2?.createdUser &&
        e1?.agenda == e2?.agenda &&
        e1?.details == e2?.details &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        listEquality.equals(e1?.acceptedUsers, e2?.acceptedUsers) &&
        e1?.receiverState == e2?.receiverState;
  }

  @override
  int hash(MeetingsRecord? e) => const ListEquality().hash([
        e?.createdUser,
        e?.agenda,
        e?.details,
        e?.startTime,
        e?.endTime,
        e?.acceptedUsers,
        e?.receiverState
      ]);

  @override
  bool isValidKey(Object? o) => o is MeetingsRecord;
}
