import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCjt8BOkLTpyqCKa-rVhrebyk5WwknmbQs",
            authDomain: "ff-schemagen-demo.firebaseapp.com",
            projectId: "ff-schemagen-demo",
            storageBucket: "ff-schemagen-demo.appspot.com",
            messagingSenderId: "652578640",
            appId: "1:652578640:web:0b5cd774a281c54c96a655",
            measurementId: "G-D6J3T42W73"));
  } else {
    await Firebase.initializeApp();
  }
}
