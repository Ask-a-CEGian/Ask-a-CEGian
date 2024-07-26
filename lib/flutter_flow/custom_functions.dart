import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

DocumentReference getOtherUserRef(
  List<DocumentReference> listUsersRef,
  DocumentReference authUserRef,
) {
  return authUserRef == listUsersRef.first
      ? listUsersRef.last
      : listUsersRef.first;
}

List<DocumentReference> addMenteeMentorRefs(
  DocumentReference menteeRef,
  DocumentReference mentorRef,
) {
  var res = [mentorRef, menteeRef];
  return res;
}

String getOtherUserName(
  List<String> userNames,
  String authUserName,
) {
  return userNames.first == authUserName ? userNames.last : userNames.first;
}

List<String> addMenteeMentorNames(
  String menteeName,
  String mentorName,
) {
  var res = [menteeName, mentorName];
  return res;
}

List<String> combineList(
  List<String> requested,
  List<String> activeMentors,
) {
  requested.addAll(activeMentors);
  return requested;
}
