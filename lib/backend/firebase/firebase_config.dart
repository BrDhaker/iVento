import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyChWSU1BupengMJe71lYyBBriU4d0qvVoU",
            authDomain: "ivento-79a99.firebaseapp.com",
            projectId: "ivento-79a99",
            storageBucket: "ivento-79a99.appspot.com",
            messagingSenderId: "780259971833",
            appId: "1:780259971833:web:aa489aec77a11606728828",
            measurementId: "G-YFSQBY4T71"));
  } else {
    await Firebase.initializeApp();
  }
}
