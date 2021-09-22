import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../data.dart';

class BackgroundNum extends StatelessWidget {
  const BackgroundNum({
    Key? key,
    required this.planetInfo,
  }) : super(key: key);

  final PlanetInfo planetInfo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      left: 32,
      child: Text(
        planetInfo.position.toString(),
        style: TextStyle(
          fontFamily: 'Avenir',
          fontSize: 247,
          color: primaryTextColor.withOpacity(0.08),
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
