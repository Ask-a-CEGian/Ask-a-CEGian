import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MentorRecord extends FirestoreRecord {
  MentorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mentor_name" field.
  String? _mentorName;
  String get mentorName => _mentorName ?? '';
  bool hasMentorName() => _mentorName != null;

  // "mentor_branch" field.
  String? _mentorBranch;
  String get mentorBranch => _mentorBranch ?? '';
  bool hasMentorBranch() => _mentorBranch != null;

  // "mentor_grad_year" field.
  int? _mentorGradYear;
  int get mentorGradYear => _mentorGradYear ?? 0;
  bool hasMentorGradYear() => _mentorGradYear != null;

  // "mentor_avail" field.
  bool? _mentorAvail;
  bool get mentorAvail => _mentorAvail ?? false;
  bool hasMentorAvail() => _mentorAvail != null;

  // "areas_interest" field.
  List<String>? _areasInterest;
  List<String> get areasInterest => _areasInterest ?? const [];
  bool hasAreasInterest() => _areasInterest != null;

  // "personal_statement" field.
  String? _personalStatement;
  String get personalStatement => _personalStatement ?? '';
  bool hasPersonalStatement() => _personalStatement != null;

  // "mentor_user_ref" field.
  DocumentReference? _mentorUserRef;
  DocumentReference? get mentorUserRef => _mentorUserRef;
  bool hasMentorUserRef() => _mentorUserRef != null;

  // "followers_count" field.
  int? _followersCount;
  int get followersCount => _followersCount ?? 0;
  bool hasFollowersCount() => _followersCount != null;

  // "followers" field.
  List<DocumentReference>? _followers;
  List<DocumentReference> get followers => _followers ?? const [];
  bool hasFollowers() => _followers != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "linkedin_url" field.
  String? _linkedinUrl;
  String get linkedinUrl => _linkedinUrl ?? '';
  bool hasLinkedinUrl() => _linkedinUrl != null;

  void _initializeFields() {
    _mentorName = snapshotData['mentor_name'] as String?;
    _mentorBranch = snapshotData['mentor_branch'] as String?;
    _mentorGradYear = castToType<int>(snapshotData['mentor_grad_year']);
    _mentorAvail = snapshotData['mentor_avail'] as bool?;
    _areasInterest = getDataList(snapshotData['areas_interest']);
    _personalStatement = snapshotData['personal_statement'] as String?;
    _mentorUserRef = snapshotData['mentor_user_ref'] as DocumentReference?;
    _followersCount = castToType<int>(snapshotData['followers_count']);
    _followers = getDataList(snapshotData['followers']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _linkedinUrl = snapshotData['linkedin_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mentor');

  static Stream<MentorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MentorRecord.fromSnapshot(s));

  static Future<MentorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MentorRecord.fromSnapshot(s));

  static MentorRecord fromSnapshot(DocumentSnapshot snapshot) => MentorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MentorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MentorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MentorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MentorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMentorRecordData({
  String? mentorName,
  String? mentorBranch,
  int? mentorGradYear,
  bool? mentorAvail,
  String? personalStatement,
  DocumentReference? mentorUserRef,
  int? followersCount,
  String? photoUrl,
  String? linkedinUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mentor_name': mentorName,
      'mentor_branch': mentorBranch,
      'mentor_grad_year': mentorGradYear,
      'mentor_avail': mentorAvail,
      'personal_statement': personalStatement,
      'mentor_user_ref': mentorUserRef,
      'followers_count': followersCount,
      'photo_url': photoUrl,
      'linkedin_url': linkedinUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class MentorRecordDocumentEquality implements Equality<MentorRecord> {
  const MentorRecordDocumentEquality();

  @override
  bool equals(MentorRecord? e1, MentorRecord? e2) {
    const listEquality = ListEquality();
    return e1?.mentorName == e2?.mentorName &&
        e1?.mentorBranch == e2?.mentorBranch &&
        e1?.mentorGradYear == e2?.mentorGradYear &&
        e1?.mentorAvail == e2?.mentorAvail &&
        listEquality.equals(e1?.areasInterest, e2?.areasInterest) &&
        e1?.personalStatement == e2?.personalStatement &&
        e1?.mentorUserRef == e2?.mentorUserRef &&
        e1?.followersCount == e2?.followersCount &&
        listEquality.equals(e1?.followers, e2?.followers) &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.linkedinUrl == e2?.linkedinUrl;
  }

  @override
  int hash(MentorRecord? e) => const ListEquality().hash([
        e?.mentorName,
        e?.mentorBranch,
        e?.mentorGradYear,
        e?.mentorAvail,
        e?.areasInterest,
        e?.personalStatement,
        e?.mentorUserRef,
        e?.followersCount,
        e?.followers,
        e?.photoUrl,
        e?.linkedinUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is MentorRecord;
}
