import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_waste_project/constants/values.dart';
import 'package:flutter/material.dart';

class NewsCarousel extends StatelessWidget {
  NewsCarousel({Key? key}) : super(key: key);
  final StaticValues staticValues = StaticValues();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(height: 250.0),
      items: staticValues.news.map((newsItem) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    newsItem.image,
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xCC000000),
                            Color(0x00000000),
                            Color(0x00000000),
                            Color(0xCC000000),
                          ])),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      newsItem.title,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                )
              ]),
            );
          },
        );
      }).toList(),
    );
  }
}
