import 'package:e_waste_project/constants/values.dart';
import 'package:e_waste_project/model/category.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  final List<Category> categories = StaticValues().categories;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.only(left: 8),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (categoryIndex) {
                Category category = categories[categoryIndex];
                bool isSelected = selectedIndex == categoryIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      this.selectedIndex = categoryIndex;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 150),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isSelected
                            ? Colors.greenAccent[700]
                            : Colors.white),
                    child: Text(
                      category.name,
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black),
                    ),
                  ),
                );
              }),
            )),
      ),
    );
  }
}
