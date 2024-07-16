import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA3565_5fisleGByyTL7FL6zFrqoXFjyxw",
            authDomain: "ask-a-cegian-5f259.firebaseapp.com",
            projectId: "ask-a-cegian-5f259",
            storageBucket: "ask-a-cegian-5f259.appspot.com",
            messagingSenderId: "51135838682",
            appId: "1:51135838682:web:6625691d6c5e4349ace8e3",
            measurementId: "G-8X35K3J7Y0"));
  } else {
    await Firebase.initializeApp();
  }
}
