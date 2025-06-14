import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'your_path/firebase_options.dart'; // Use Firebase CLI to generate this


import 'contact_page.dart';
import 'home_page.dart';
import 'know_more.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}





