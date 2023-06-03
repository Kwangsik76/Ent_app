import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class TopMenu extends StatelessWidget implements PreferredSizeWidget {
  final bool isHomePage;
  final bool isBackButtonVisible;

  const TopMenu({
    Key? key,
    required this.isHomePage,
    required this.isBackButtonVisible,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      elevation: 2,
      automaticallyImplyLeading: isBackButtonVisible,
      title: Row(
        children: [
          SizedBox(width: 5),
          Image.asset('assets/logo.png', fit: BoxFit.fitWidth, width: 30),
          SizedBox(width: 8),
          Text(
            '트리위키',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            // 버튼 클릭 시 동작할 내용 추가
          },
          icon: Icon(CupertinoIcons.bell, color: Colors.white),
        ),
        IconButton(
          onPressed: () {
            // 버튼 클릭 시 동작할 내용 추가
          },
          icon: Icon(CupertinoIcons.search, color: Colors.white),
        ),
        IconButton(
          onPressed: () {
            if (isHomePage) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            } else {
              Navigator.pop(context); // 현재 페이지 닫기
            }
          },
          icon: isHomePage
              ? Icon(Icons.menu_rounded, color: Colors.white)
              : Icon(Icons.close, color: Colors.white),
        ),
      ],
    );
  }
}
