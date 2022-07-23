import 'package:flutter/material.dart';
import 'package:e_waste_project/components/searchbar.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchBar()),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.menu,
          size: 30,
        )
      ],
    );
  }
}
