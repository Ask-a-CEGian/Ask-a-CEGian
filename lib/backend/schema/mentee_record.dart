import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenteeRecord extends FirestoreRecord {
  MenteeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mentee_name" field.
  String? _menteeName;
  String get menteeName => _menteeName ?? '';
  bool hasMenteeName() => _menteeName != null;

  // "mentee_user_ref" field.
  DocumentReference? _menteeUserRef;
  DocumentReference? get menteeUserRef => _menteeUserRef;
  bool hasMenteeUserRef() => _menteeUserRef != null;

  // "mentee_branch" field.
  String? _menteeBranch;
  String get menteeBranch => _menteeBranch ?? '';
  bool hasMenteeBranch() => _menteeBranch != null;

  // "mentee_grad_year" field.
  int? _menteeGradYear;
  int get menteeGradYear => _menteeGradYear ?? 0;
  bool hasMenteeGradYear() => _menteeGradYear != null;

  // "areas_interest" field.
  List<String>? _areasInterest;
  List<String> get areasInterest => _areasInterest ?? const [];
  bool hasAreasInterest() => _areasInterest != null;

  // "personal_statement" field.
  String? _personalStatement;
  String get personalStatement => _personalStatement ?? '';
  bool hasPersonalStatement() => _personalStatement != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "following" field.
  List<DocumentReference>? _following;
  List<DocumentReference> get following => _following ?? const [];
  bool hasFollowing() => _following != null;

  // "linkedin_url" field.
  String? _linkedinUrl;
  String get linkedinUrl => _linkedinUrl ?? '';
  bool hasLinkedinUrl() => _linkedinUrl != null;

  void _initializeFields() {
    _menteeName = snapshotData['mentee_name'] as String?;
    _menteeUserRef = snapshotData['mentee_user_ref'] as DocumentReference?;
    _menteeBranch = snapshotData['mentee_branch'] as String?;
    _menteeGradYear = castToType<int>(snapshotData['mentee_grad_year']);
    _areasInterest = getDataList(snapshotData['areas_interest']);
    _personalStatement = snapshotData['personal_statement'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _following = getDataList(snapshotData['following']);
    _linkedinUrl = snapshotData['linkedin_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mentee');

  static Stream<MenteeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenteeRecord.fromSnapshot(s));

  static Future<MenteeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenteeRecord.fromSnapshot(s));

  static MenteeRecord fromSnapshot(DocumentSnapshot snapshot) => MenteeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenteeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenteeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenteeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenteeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenteeRecordData({
  String? menteeName,
  DocumentReference? menteeUserRef,
  String? menteeBranch,
  int? menteeGradYear,
  String? personalStatement,
  String? photoUrl,
  String? linkedinUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mentee_name': menteeName,
      'mentee_user_ref': menteeUserRef,
      'mentee_branch': menteeBranch,
      'mentee_grad_year': menteeGradYear,
      'personal_statement': personalStatement,
      'photo_url': photoUrl,
      'linkedin_url': linkedinUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenteeRecordDocumentEquality implements Equality<MenteeRecord> {
  const MenteeRecordDocumentEquality();

  @override
  bool equals(MenteeRecord? e1, MenteeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.menteeName == e2?.menteeName &&
        e1?.menteeUserRef == e2?.menteeUserRef &&
        e1?.menteeBranch == e2?.menteeBranch &&
        e1?.menteeGradYear == e2?.menteeGradYear &&
        listEquality.equals(e1?.areasInterest, e2?.areasInterest) &&
        e1?.personalStatement == e2?.personalStatement &&
        e1?.photoUrl == e2?.photoUrl &&
        listEquality.equals(e1?.following, e2?.following) &&
        e1?.linkedinUrl == e2?.linkedinUrl;
  }

  @override
  int hash(MenteeRecord? e) => const ListEquality().hash([
        e?.menteeName,
        e?.menteeUserRef,
        e?.menteeBranch,
        e?.menteeGradYear,
        e?.areasInterest,
        e?.personalStatement,
        e?.photoUrl,
        e?.following,
        e?.linkedinUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is MenteeRecord;
}
