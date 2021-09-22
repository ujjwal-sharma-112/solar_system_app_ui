import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';

import '../constants.dart';
import '../data.dart';
import '../detail_page.dart';

class CardSwiper extends StatefulWidget {
  const CardSwiper({
    Key? key,
  }) : super(key: key);

  @override
  _CardSwiperState createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Swiper(
        scrollDirection: Axis.horizontal,
        itemCount: planets.length,
        itemWidth: MediaQuery.of(context).size.width - 2 * 64,
        itemHeight: MediaQuery.of(context).size.height - 2 * 64,
        layout: SwiperLayout.STACK,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(activeSize: 20, space: 8),
        ),
        curve: Curves.easeOutCirc,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, a, b) => DetailPage(
                    planetInfo: planets[index],
                  ),
                ),
              );
            },
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 100),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 100),
                            Text(
                              planets[index ].name,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 44,
                                color: const Color(0xff47455f),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Solar System',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 23,
                                color: primaryTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 32),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Know more',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 18,
                                    color: secondaryTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: secondaryTextColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Hero(
                  tag: planets[index].position,
                  child: Image.asset(planets[index].iconImage),
                ),
                Positioned(
                  right: 24,
                  bottom: 60,
                  child: Text(
                    planets[index].position.toString(),
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 200,
                      color: primaryTextColor.withOpacity(0.08),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
