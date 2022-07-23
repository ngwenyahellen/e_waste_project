import 'package:e_waste_project/constants/values.dart';
import 'package:e_waste_project/model/news.dart';
import 'package:flutter/material.dart';

class TiledNewsView extends StatelessWidget {
  TiledNewsView({Key? key}) : super(key: key);
  final List<News> news = StaticValues().news;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: List.generate(
          this.news.length,
          (newsIndex) {
            News tiledNews = news[newsIndex];
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      tiledNews.image,
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Container(
                            child:
                                Text(getTruncatedTitle(tiledNews.title, 60))),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              calculateReadingTime(
                                tiledNews.description.length,
                              ),
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            Text(
                              tiledNews.time,
                              style: TextStyle(color: Colors.grey[700]),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  String getTruncatedTitle(String text, int truncatedNumber) {
    return text.length > truncatedNumber
        ? text.substring(0, truncatedNumber) + "..."
        : text;
  }

  String calculateReadingTime(int descriptionLength) {
    return "${descriptionLength > 200 ? (descriptionLength / 200).floor() : (descriptionLength / 200 * 100).floor()} ${descriptionLength > 200 ? "mins" : "second"} read";
  }
}
