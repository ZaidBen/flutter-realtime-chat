import 'package:whatsben/Authenticate/Autheticate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Define Firebase options for web
const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyBYt6kbOcwI24gCP8nN5F_Jmz-M3doUiV8",
  authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
  databaseURL: "https://YOUR_PROJECT_ID.firebaseio.com",
  projectId: "whatsben-cdb8c",
  storageBucket: "YOUR_PROJECT_ID.appspot.com",
  messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
  appId: "1:767539963591:android:6ff4f3d8596b97084400e2",
  measurementId: "YOUR_MEASUREMENT_ID",
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase with FirebaseOptions for web
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }
}
