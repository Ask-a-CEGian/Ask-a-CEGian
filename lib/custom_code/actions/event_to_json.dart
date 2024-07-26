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

import 'index.dart'; // Imports other custom actions
import 'dart:math';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random.secure();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

Future<dynamic> eventToJson(String title, String description,
    DateTime startTime, DateTime endTime) async {
  // Add your function code here

  final json = {
    'summary': title,
    'description': description,
    'start': {'dateTime': startTime.toUtc().toIso8601String()},
    'end': {'dateTime': endTime.toUtc().toIso8601String()},
    'conferenceData': {
      'createRequest': {
        'requestId': getRandomString(10),
        'conferenceSolutionKey': {'type': 'hangoutsMeet'}
      }
    }
  };
  return json;
}
