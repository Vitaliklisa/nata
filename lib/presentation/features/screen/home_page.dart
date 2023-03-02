import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nata/presentation/features/screen/screen_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ScreenModel(),
      child: Consumer<ScreenModel>(
        builder: (context, model, child) {
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
            body: RawScrollbar(
              thumbColor: const Color(0xFF150A28),
              thumbVisibility: true,
              radius: const Radius.circular(20),
              thickness: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getTitle(),
                    Image.asset('assets/images/fl.jpg'),
                    CarouselSlider(
                      carouselController: _controller,
                      items: [
                        Image.asset(
                          'assets/images/camouflage_for_the_helmet.jpeg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset('assets/images/socks.jpeg'),
                        Image.asset('assets/images/socks2.jpeg'),
                        Image.asset('assets/images/socks3.jpeg'),
                        Image.asset('assets/images/pillow.jpeg'),
                        Image.asset('assets/images/whitepillow.jpeg'),
                        Image.asset('assets/images/hat.jpeg'),
                        Image.asset('assets/images/Set.jpeg'),
                        Image.asset('assets/images/Tree.jpeg'),
                      ],
                      options: CarouselOptions(
                        viewportFraction: 1.0,
                        autoPlay: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget getTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      Text(
        "Nata",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 140.0, color: Colors.blueAccent),
      ),
    ],
  );
}
