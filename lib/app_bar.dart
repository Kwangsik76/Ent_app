import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class TopMenu extends StatelessWidget implements PreferredSizeWidget {
  final bool isHomePage;
  final bool isBackButtonVisible;
  final String title; // 새로 추가한 매개변수

  const TopMenu({
    Key? key,
    required this.isHomePage,
    required this.isBackButtonVisible,
    required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      elevation: 2,
      automaticallyImplyLeading: isBackButtonVisible,
      title: (isHomePage && isBackButtonVisible)
          ? Row(
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
            )
          : (!isHomePage && isBackButtonVisible)
              ? Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              : Row(
                  children: [
                    SizedBox(width: 5),
                    Image.asset('assets/logo.png',
                        fit: BoxFit.fitWidth, width: 30),
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
      actions: (isHomePage && isBackButtonVisible)
          ? [
              Row(
                children: [
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
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
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
              ),
            ]
          : (!isHomePage && isBackButtonVisible)
              ? null
              : [
                  Row(
                    children: [
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
                              MaterialPageRoute(
                                builder: (context) => ProfilePage(),
                              ),
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
                  )
                ],
    );
  }
}
