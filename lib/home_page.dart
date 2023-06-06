import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_list.dart';
import 'app_bar.dart';
import 'package:http/http.dart';
import 'bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // initState에서 원하는 초기화 로직을 추가할 수 있습니다.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopMenu(
          isHomePage: true,
          isBackButtonVisible: true,
          title: '홈',
        ),
        body: HomeList(),
        bottomNavigationBar: BottomNavBar(
          isHomePage: true,
        ));
  }
}
