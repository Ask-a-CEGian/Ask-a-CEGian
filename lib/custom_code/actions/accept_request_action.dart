// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future acceptRequestAction(DocumentReference menteeRef,
    DocumentReference mentorRef, DocumentReference requestRef) async {
  // Add your function code here!
  CollectionReference requestsRef =
      FirebaseFirestore.instance.collection("requests");
  CollectionReference mentorshipsRef =
      FirebaseFirestore.instance.collection("mentorships");

  requestsRef.doc(requestRef.id).update({
    'request_state': RequestState.ACCEPTED.toString().split('.').last,
    'response_time': Timestamp.now()
  });

  mentorshipsRef.add({
    'mentee_ref': menteeRef,
    'mentor_ref': mentorRef,
    'started_time': Timestamp.now(),
    'user_refs': [menteeRef, mentorRef],
    'ongoing': true
  });
}
