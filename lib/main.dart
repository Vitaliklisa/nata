import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nata/firebase_options.dart';
import 'package:nata/nata_app.dart';

void main() {
   Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(NataApp());
}
