import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';

class ScrollableGamesWidget extends StatelessWidget {
  final double height;
  final double width;
  final bool showTile;

  final List<Game> gamesData;
  const ScrollableGamesWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.showTile,
      required this.gamesData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
          itemCount: gamesData.length,
          itemBuilder: (context, index) {
            return Container(
              height: height * 0.80,
              width: width * 0.30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage(gamesData[index].coverImage.url))),
            );
          }),
    );
  }
}
