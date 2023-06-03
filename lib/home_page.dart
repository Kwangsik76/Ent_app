import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_list.dart';
import 'app_bar.dart';

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
        isBackButtonVisible: false,
      ),
      body: HomeList(),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house_fill,
            ),
            label: '홈',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.camera_fill,
            ),
            label: '질문하기',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.my_library_books,
            ),
            label: '내질문',
          ),
        ],
        currentIndex: 0,
      ),
    );
  }
}
