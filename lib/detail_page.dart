import 'package:flutter/material.dart';
import './data.dart';
import 'Widgets/DetailsContainer.dart';
import 'Widgets/SmallWidgets/BackGroundNum.dart';
import 'Widgets/SmallWidgets/TopImage.dart';

class DetailPage extends StatelessWidget {
  final PlanetInfo planetInfo;

  const DetailPage({Key? key, required this.planetInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            DetailsContainer(planetInfo: planetInfo),
            TopImage(planetInfo: planetInfo),
            BackgroundNum(planetInfo: planetInfo),
            Positioned(
              top: 20,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

