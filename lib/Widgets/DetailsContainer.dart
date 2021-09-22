import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../constants.dart';
import '../data.dart';
import 'GalleryContainer.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    Key? key,
    required this.planetInfo,
  }) : super(key: key);

  final PlanetInfo planetInfo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 300),
                Text(
                  planetInfo.name,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 56,
                    color: primaryTextColor,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Solar System',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 31,
                    color: primaryTextColor,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
                Divider(color: Colors.black38),
                SizedBox(height: 32),
                ReadMoreText(
                  planetInfo.description,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 20,
                    color: contentTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 32),
                Divider(color: Colors.black38),
              ],
            ),
          ),
          GalleryContainer(planetInfo: planetInfo),
        ],
      ),
    );
  }
}
