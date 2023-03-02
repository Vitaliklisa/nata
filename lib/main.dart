import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nata/firebase_options.dart';
import 'package:nata/presentation/features/screen/home_page.dart';

void main() {
   Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(NataApp());
}

class NataApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mother work`s',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomePage(),
    );
  }
}
