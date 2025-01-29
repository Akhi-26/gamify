import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';

class FeaturedGamesInfoWidget extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final int selectedGame;

  const FeaturedGamesInfoWidget({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.selectedGame,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceHeight * 0.12,
      width: deviceWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              featuredGames[selectedGame].title,
              maxLines: 2,
              style: TextStyle(
                fontSize: deviceHeight * 0.035,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(),
        ],
      ),
    );
  }
}
