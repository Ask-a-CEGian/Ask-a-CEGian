import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserReportsRecord extends FirestoreRecord {
  UserReportsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reported_by" field.
  DocumentReference? _reportedBy;
  DocumentReference? get reportedBy => _reportedBy;
  bool hasReportedBy() => _reportedBy != null;

  // "reported_on" field.
  DocumentReference? _reportedOn;
  DocumentReference? get reportedOn => _reportedOn;
  bool hasReportedOn() => _reportedOn != null;

  // "report_message" field.
  String? _reportMessage;
  String get reportMessage => _reportMessage ?? '';
  bool hasReportMessage() => _reportMessage != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "resolved_time" field.
  DateTime? _resolvedTime;
  DateTime? get resolvedTime => _resolvedTime;
  bool hasResolvedTime() => _resolvedTime != null;

  // "isResolved" field.
  bool? _isResolved;
  bool get isResolved => _isResolved ?? false;
  bool hasIsResolved() => _isResolved != null;

  void _initializeFields() {
    _reportedBy = snapshotData['reported_by'] as DocumentReference?;
    _reportedOn = snapshotData['reported_on'] as DocumentReference?;
    _reportMessage = snapshotData['report_message'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _resolvedTime = snapshotData['resolved_time'] as DateTime?;
    _isResolved = snapshotData['isResolved'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_reports');

  static Stream<UserReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserReportsRecord.fromSnapshot(s));

  static Future<UserReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserReportsRecord.fromSnapshot(s));

  static UserReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserReportsRecordData({
  DocumentReference? reportedBy,
  DocumentReference? reportedOn,
  String? reportMessage,
  DateTime? createdTime,
  DateTime? resolvedTime,
  bool? isResolved,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reported_by': reportedBy,
      'reported_on': reportedOn,
      'report_message': reportMessage,
      'created_time': createdTime,
      'resolved_time': resolvedTime,
      'isResolved': isResolved,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserReportsRecordDocumentEquality implements Equality<UserReportsRecord> {
  const UserReportsRecordDocumentEquality();

  @override
  bool equals(UserReportsRecord? e1, UserReportsRecord? e2) {
    return e1?.reportedBy == e2?.reportedBy &&
        e1?.reportedOn == e2?.reportedOn &&
        e1?.reportMessage == e2?.reportMessage &&
        e1?.createdTime == e2?.createdTime &&
        e1?.resolvedTime == e2?.resolvedTime &&
        e1?.isResolved == e2?.isResolved;
  }

  @override
  int hash(UserReportsRecord? e) => const ListEquality().hash([
        e?.reportedBy,
        e?.reportedOn,
        e?.reportMessage,
        e?.createdTime,
        e?.resolvedTime,
        e?.isResolved
      ]);

  @override
  bool isValidKey(Object? o) => o is UserReportsRecord;
}
