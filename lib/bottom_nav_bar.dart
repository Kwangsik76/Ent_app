import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_question.dart'; // my_question.dart를 임포트합니다.

class BottomNavBar extends StatefulWidget {
  final bool isHomePage;

  const BottomNavBar({Key? key, required this.isHomePage}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.black,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      iconSize: 28,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: widget.isHomePage
                ? null
                : () {
                    Navigator.pop(context); // 이전 화면으로 돌아갑니다.
                  },
            child: Icon(
              CupertinoIcons.house_fill,
            ),
          ),
          label: '홈',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyQuestion()),
              );
            },
            child: Icon(
              CupertinoIcons.camera_fill,
            ),
          ),
          label: '질문하기',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyQuestion()),
              );
            },
            child: Icon(
              Icons.my_library_books,
            ),
          ),
          label: '내질문',
        ),
      ],
    );
  }
}
