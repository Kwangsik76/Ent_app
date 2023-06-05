import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

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
    );
  }
}
