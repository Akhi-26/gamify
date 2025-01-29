import 'package:flutter/material.dart';

import '../widgets/featured_games_widget.dart';
import '../widgets/gradient_box_widget.dart';
import '../widgets/top_layer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double deviceHeight;
  late double deviceWidth;
  int selectedGame = 0;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          FeaturedGamesWidget(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            onGameChanged: (index) => setState(() => selectedGame = index),
          ),
          GradientBoxWidget(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
          TopLayerWidget(deviceHeight: deviceHeight, deviceWidth: deviceWidth, selectedGame: selectedGame),
        ],
      ),
    );
  }
}
