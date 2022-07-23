import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      cursorColor: Colors.black,
      style: TextStyle(fontSize: 18),
      decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          border: InputBorder.none,
          hintText: "Search Latest E-Waste News",
          filled: true,
          fillColor: Colors.grey[200]),
    ));
  }
}
