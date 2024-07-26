import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "branch" field.
  String? _branch;
  String get branch => _branch ?? '';
  bool hasBranch() => _branch != null;

  // "grad_year" field.
  int? _gradYear;
  int get gradYear => _gradYear ?? 0;
  bool hasGradYear() => _gradYear != null;

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

  // "linkedin_url" field.
  String? _linkedinUrl;
  String get linkedinUrl => _linkedinUrl ?? '';
  bool hasLinkedinUrl() => _linkedinUrl != null;

  // "adminVerified" field.
  bool? _adminVerified;
  bool get adminVerified => _adminVerified ?? false;
  bool hasAdminVerified() => _adminVerified != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "mentoring" field.
  List<DocumentReference>? _mentoring;
  List<DocumentReference> get mentoring => _mentoring ?? const [];
  bool hasMentoring() => _mentoring != null;

  // "requestedMentors" field.
  List<DocumentReference>? _requestedMentors;
  List<DocumentReference> get requestedMentors => _requestedMentors ?? const [];
  bool hasRequestedMentors() => _requestedMentors != null;

  // "acceptedMentors" field.
  List<DocumentReference>? _acceptedMentors;
  List<DocumentReference> get acceptedMentors => _acceptedMentors ?? const [];
  bool hasAcceptedMentors() => _acceptedMentors != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _branch = snapshotData['branch'] as String?;
    _gradYear = castToType<int>(snapshotData['grad_year']);
    _mentorAvail = snapshotData['mentor_avail'] as bool?;
    _areasInterest = getDataList(snapshotData['areas_interest']);
    _personalStatement = snapshotData['personal_statement'] as String?;
    _linkedinUrl = snapshotData['linkedin_url'] as String?;
    _adminVerified = snapshotData['adminVerified'] as bool?;
    _role = snapshotData['role'] as String?;
    _mentoring = getDataList(snapshotData['mentoring']);
    _requestedMentors = getDataList(snapshotData['requestedMentors']);
    _acceptedMentors = getDataList(snapshotData['acceptedMentors']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? branch,
  int? gradYear,
  bool? mentorAvail,
  String? personalStatement,
  String? linkedinUrl,
  bool? adminVerified,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'branch': branch,
      'grad_year': gradYear,
      'mentor_avail': mentorAvail,
      'personal_statement': personalStatement,
      'linkedin_url': linkedinUrl,
      'adminVerified': adminVerified,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.branch == e2?.branch &&
        e1?.gradYear == e2?.gradYear &&
        e1?.mentorAvail == e2?.mentorAvail &&
        listEquality.equals(e1?.areasInterest, e2?.areasInterest) &&
        e1?.personalStatement == e2?.personalStatement &&
        e1?.linkedinUrl == e2?.linkedinUrl &&
        e1?.adminVerified == e2?.adminVerified &&
        e1?.role == e2?.role &&
        listEquality.equals(e1?.mentoring, e2?.mentoring) &&
        listEquality.equals(e1?.requestedMentors, e2?.requestedMentors) &&
        listEquality.equals(e1?.acceptedMentors, e2?.acceptedMentors);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.branch,
        e?.gradYear,
        e?.mentorAvail,
        e?.areasInterest,
        e?.personalStatement,
        e?.linkedinUrl,
        e?.adminVerified,
        e?.role,
        e?.mentoring,
        e?.requestedMentors,
        e?.acceptedMentors
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
