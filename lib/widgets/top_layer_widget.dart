import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';
import 'package:gamify_app/widgets/scrollable_games_widget.dart';
import 'featured_games_info_widget.dart';

class TopLayerWidget extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final int selectedGame;

  const TopLayerWidget({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.selectedGame,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: deviceHeight*0.30,),
          FeaturedGamesInfoWidget(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            selectedGame: selectedGame,
          ),
          ScrollableGamesWidget(height: deviceHeight, width: deviceWidth, showTile: true, gamesData: games2)
        ],
      ),
    );
  }
}
