import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'bottom_nav_bar.dart';
import 'sub_list.dart';

class MyQuestion extends StatefulWidget {
  const MyQuestion({Key? key}) : super(key: key);

  @override
  State<MyQuestion> createState() => _MyQuestionState();
}

class _MyQuestionState extends State<MyQuestion> {
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
