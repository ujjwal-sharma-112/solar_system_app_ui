import 'package:flutter/material.dart';

import '../data.dart';

class GalleryContainer extends StatelessWidget {
  const GalleryContainer({
    Key? key,
    required this.planetInfo,
  }) : super(key: key);

  final PlanetInfo planetInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Gallery',
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 25,
            color: const Color(0xff47455f),
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.left,
        ),
        Container(
          height: 250,
          // padding: const EdgeInsets.only(left: 32.0),
          child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: planetInfo.images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        planetInfo.images[index],
                        fit: BoxFit.cover,
                      )),
                );
              }),
        ),
      ],
    );
  }
}
