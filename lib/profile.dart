import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'nick_modify.dart';
import 'email_modify.dart';
import 'phone_modify.dart';
import 'license_modify.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: TopMenu(
        isHomePage: false,
        isBackButtonVisible: false,
        title: '내계정',
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.lightGreen,
                            width: 3.0,
                          ),
                        ),
                        child: Image.asset(
                          'assets/profile.png',
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 15,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                          child: FloatingActionButton(
                            onPressed: () {
                              // 수정 작업을 수행하는 코드를 여기에 추가합니다.
                            },
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            backgroundColor: Colors.white,
                            mini: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 타이틀 영역
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text(
                        '내계정',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow, // 폰트 색상을 하얀색으로 설정
                        ),
                      ),
                    ),
                  ),
                  // 가로줄
                  Expanded(
                    flex: 1,
                    child: Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  // 메뉴 영역
                  Expanded(
                    flex: 20,
                    child: Column(
                      children: [
                        ListTile(
                          title: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '닉네임',
                                  style: TextStyle(
                                    color: Colors.white, // 폰트 색상을 하얀색으로 설정
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '수원광자',
                                  style: TextStyle(
                                    color: Colors.white, // 폰트 색상을 하얀색으로 설정
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white, // 아이콘의 색상
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NickName()),
                            );
                          },
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '휴대폰',
                                  style: TextStyle(
                                    color: Colors.white, // 폰트 색상을 하얀색으로 설정
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '010-3855-7332',
                                  style: TextStyle(
                                    color: Colors.white, // 폰트 색상을 하얀색으로 설정
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white, // 아이콘의 색상
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PhoneNumber()),
                            );
                          },
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '이메일',
                                  style: TextStyle(
                                    color: Colors.white, // 폰트 색상을 하얀색으로 설정
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'ks8***@nav******',
                                  style: TextStyle(
                                    color: Colors.white, // 폰트 색상을 하얀색으로 설정
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white, // 아이콘의 색상
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmailAddress()),
                            );
                          },
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '나무의사',
                                  style: TextStyle(
                                    color: Colors.white, // 폰트 색상을 하얀색으로 설정
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '인증하기',
                                  style: TextStyle(
                                    color: Colors.white, // 폰트 색상을 하얀색으로 설정
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white, // 아이콘의 색상
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LicenseNumber()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
