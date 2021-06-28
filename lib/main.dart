import 'package:flutter/material.dart';
import 'package:nata/home_page.dart';

void main() => runApp(NataApp());

class NataApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
