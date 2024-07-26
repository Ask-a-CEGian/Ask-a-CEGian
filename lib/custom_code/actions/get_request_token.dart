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

import 'package:google_sign_in/google_sign_in.dart';

Future<String?> getRequestToken() async {
  // Add your function code here!
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '597759363543-9rp2a6dcr6rtkmpq14b8on0sumuqr2ok.apps.googleusercontent.com',
      scopes: <String>[
        'https://www.googleapis.com/auth/calendar',
        'https://www.googleapis.com/auth/calendar.events'
      ],
    );
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signInSilently();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    print(googleSignInAuthentication.idToken);
    return googleSignInAuthentication.idToken;
  } catch (error) {
    print('Error signing in with google');
    return null;
  }
}
