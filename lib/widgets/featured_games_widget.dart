import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../data.dart';

class FeaturedGamesWidget extends StatefulWidget {
  final double deviceHeight;
  final double deviceWidth;
  final Function(int) onGameChanged;

  const FeaturedGamesWidget({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.onGameChanged,
  });

  @override
  State<FeaturedGamesWidget> createState() => _FeaturedGamesWidgetState();
}

class _FeaturedGamesWidgetState extends State<FeaturedGamesWidget> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: widget.deviceHeight * 0.5,
          width: widget.deviceWidth,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: widget.onGameChanged,
            scrollDirection: Axis.horizontal,
            itemCount: featuredGames.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(featuredGames[index].coverImage.url),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 25,
          bottom: 65, // Adjust position as needed
          child: SmoothPageIndicator(
            controller: _pageController,
            count: featuredGames.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Colors.grey,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 8,
            ),
          ),
        ),
      ],
    );
  }
}
