import 'package:flutter/material.dart';
import 'package:nata/presentation/features/screen/screen_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ScreenModel(),
      child: Consumer<ScreenModel>(builder: (context, model, child) {
        return Scaffold(
          backgroundColor: model.backgroundColor,
          appBar: AppBar(
            backgroundColor: model.backgroundColor,
            centerTitle: true,
            actions: [
              FloatingActionButton(
                backgroundColor: model.buttonColor,
                onPressed: model.onFabPressed,
              )
            ],
          ),
          body: Column(
            children: [
              getTitle(),
              Image.asset('assets/images/fl.jpg'),
            ],
          ),
        );
      }),
    );
  }
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
