import 'package:flutter/material.dart';

class GradientBoxWidget extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;

  const GradientBoxWidget({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: deviceHeight * 0.65,
        width: deviceWidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.grey, Colors.transparent],
            stops: [0.8, 1],
          ),
        ),
      ),
    );
  }
}
