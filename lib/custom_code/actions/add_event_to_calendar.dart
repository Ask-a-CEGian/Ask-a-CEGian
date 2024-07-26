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

import 'package:http/http.dart' as http;

Future<int> addEventToCalendar(String accessToken, dynamic jsonEvent) async {
  // Add your function code here!
  final headers = {
    'Authorization': 'Bearer $accessToken',
    'Content-Type': 'application/json'
  };
  final response = await http.post(
      Uri.parse(
          'https://www.googleapis.com/calendar/v3/calendars/primary/events?conferenceDataVersion=1'),
      headers: headers,
      body: jsonEncode(jsonEvent));

  if (response.statusCode == 200) {
    print('Event inserted successfully');
    return 1;
  } else {
    print('Error inserting event: ${response.statusCode}');
    print('Response body: ${response.body}');
    return 0;
  }
}
