import 'package:flutter/material.dart';

import '../../data.dart';

class TopImage extends StatelessWidget {
  const TopImage({
    Key? key,
    required this.planetInfo,
  }) : super(key: key);

  final PlanetInfo planetInfo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -64,
      child: Hero(
        tag: planetInfo.position,
        child: Image.asset(planetInfo.iconImage),
      ),
    );
  }
}
