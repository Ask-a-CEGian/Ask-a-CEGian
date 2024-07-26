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

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String?> getAccessToken(String refreshToken) async {
  print('entered');
  final String url = 'https://accounts.google.com/o/oauth2/token';
  final Map<String, String> headers = {
    'Content-Type': 'application/x-www-form-urlencoded',
  };
  final Map<String, String> body = {
    'grant_type': 'refresh_token',
    'refresh_token': refreshToken,
    'client_secret': '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',
    'client_id':
        '597759363543-9rp2a6dcr6rtkmpq14b8on0sumuqr2ok.apps.googleusercontent.com',
  };

  final response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: body,
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = json.decode(response.body);
    var res = responseData['access_token'];
    print('Access Token: ${res}');
    return res;
  } else {
    print('Failed to refresh token. Status code: ${response.statusCode}');
    print('Response body: ${response.body}');
    return null;
  }
}
