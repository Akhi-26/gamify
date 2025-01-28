import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  var deviceHeight ;
var deviceWidth ;

@override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          featuresGamesWidget()
        ],
      ),
    );
  }

  Widget featuresGamesWidget(){
    return SizedBox(height: deviceHeight*0.5,width: deviceWidth,child: Container(
      decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(featuredGames[0].coverImage.url))),
    ),);
  }
}