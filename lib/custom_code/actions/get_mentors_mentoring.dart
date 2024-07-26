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

Future<List<String>> getMentorsMentoring(DocumentReference menteeRef) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  List<String> result = [];
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('mentorships')
        .where('mentee_ref', isEqualTo: menteeRef)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      result = querySnapshot.docs
          .map((doc) => doc['mentor_ref']
              .toString()) // Extract only the 'name' field values
          .toList();
    } else {
      print('No documents found with the given field value.');
    }
  } catch (e) {
    print('Error querying documents: $e');
  }
  return result;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
