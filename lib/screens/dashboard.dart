import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*  return Scaffold(
      appBar: AppBar(
        title: Text("E-Waste"),
      ),
      body: Column(),
    );*/
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('E-Waste'),
            automaticallyImplyLeading: false,
            bottom: TabBar(tabs: [
              Tab(
                text: 'HOME',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'LIST',
                icon: Icon(Icons.list_alt),
              ),
              Tab(
                text: 'USER',
                icon: Icon(Icons.verified_user),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('Home'),
            ),
            Center(
              child: Text('List'),
            ),
            Center(
              child: Text('User Profile'),
            ),
          ]),
        ));
  }
}
