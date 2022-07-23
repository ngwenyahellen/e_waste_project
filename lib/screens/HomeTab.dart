import 'package:e_waste_project/components/category_selector.dart';
import 'package:e_waste_project/components/newsCarousel.dart';
import 'package:e_waste_project/components/tiled_news_view.dart';
import 'package:e_waste_project/components/welcomewidget.dart';
import 'package:flutter/material.dart';
import 'package:e_waste_project/components/searchBar.dart';
import 'package:e_waste_project/components/top_bar.dart';

class HomePageTab extends StatefulWidget {
  const HomePageTab({Key? key}) : super(key: key);

  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopBar(),
                        SizedBox(
                          height: 10,
                        ),
                        WelcomeWidget()
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                NewsCarousel(),
                SizedBox(
                  height: 10,
                ),
                CategorySelector(),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [TiledNewsView()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
