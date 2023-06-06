import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'bottom_nav_bar.dart';
import 'sub_list.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopMenu(
          isHomePage: false,
          isBackButtonVisible: false,
          title: '홈',
        ),
        body: SubList(),
        bottomNavigationBar: BottomNavBar(
          isHomePage: false,
        ));
  }
}
