import 'package:flutter/material.dart';

class RecyclingPage extends StatefulWidget {
  RecyclingPage({Key? key}) : super(key: key);

  @override
  _RecyclingPageState createState() => _RecyclingPageState();
}

class _RecyclingPageState extends State<RecyclingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recycling"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_rounded, size: 34),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
