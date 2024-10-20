import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCWLC_5ooD9kS9ThDg5oCMMDW5j7pWvlCI",
            authDomain: "fin-calcu-e2u5pw.firebaseapp.com",
            projectId: "fin-calcu-e2u5pw",
            storageBucket: "fin-calcu-e2u5pw.appspot.com",
            messagingSenderId: "353683293917",
            appId: "1:353683293917:web:7d0e65d51130ceb74c7d34"));
  } else {
    await Firebase.initializeApp();
  }
}
