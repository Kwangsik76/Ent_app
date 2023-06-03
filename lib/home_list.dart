import 'package:flutter/material.dart';
import 'category_list.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryList(),
        CategoryList(),
        CategoryList(),
        CategoryList(),
      ],
    );
  }
}
