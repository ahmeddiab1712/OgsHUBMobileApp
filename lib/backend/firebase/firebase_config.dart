import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCyEApM1GUNMserYJw0hgFW_2ZrpKzhWgA",
            authDomain: "ogshub-af6b5.firebaseapp.com",
            projectId: "ogshub-af6b5",
            storageBucket: "ogshub-af6b5.firebasestorage.app",
            messagingSenderId: "949088424726",
            appId: "1:949088424726:web:ea6582c1e7f43dff1cb637",
            measurementId: "G-DRZZ1YNNHH"));
  } else {
    await Firebase.initializeApp();
  }
}
