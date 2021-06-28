import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nata/second_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          getTitle(),
          getContacts(),
          Image.asset('assets/images/fl.jpg'),
          ElevatedButton(
            onPressed: () {
              // Navigate back to first route when tapped.
              goToSecond(context);
            },
            child: Text('Go to second page'),
          )
        ],
      ),
    );
  }

  void goToSecond(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }

  Widget getContacts() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('050 590 52 52'),
      ),
    );
  }

  Widget getTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Nata",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 140.0, color: Colors.blueAccent),
        ),
      ],
    );
  }
}
