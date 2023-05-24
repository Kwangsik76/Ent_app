import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '트리위키',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Treewiki(title: '트리위키'),
    );
  }
}

class Treewiki extends StatefulWidget {
  Treewiki({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Treewiki> createState() => _TreewikiState();
}

class _TreewikiState extends State<Treewiki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            // 로고 클릭 시 실행할 동작
          },
          child: Container(
            margin: EdgeInsets.only(left: 8, right: 0, top: 12, bottom: 12),
            child: Image.asset('assets/logo.png'),
          ),
        ),
        title: GestureDetector(
          onTap: () {
            // 타이틀 클릭 시 실행할 동작
          },
          child: Container(
            margin: EdgeInsets.only(left: 0, right: 12),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // 알람 버튼 클릭 시 실행할 동작
            },
            icon: Image.asset('assets/alram_off.png'),
          ),
          IconButton(
            onPressed: () {
              // 검색 버튼 클릭 시 실행할 동작
            },
            icon: Image.asset('assets/seach.png'),
          ),
          IconButton(
            onPressed: () {
              // 메뉴 버튼 클릭 시 실행할 동작
            },
            icon: Image.asset('assets/menu.png'),
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
      ),
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        elevation: 30, // 그림자 높이 조정
        child: SizedBox(
          height: 80, // 바닥 네비게이션 바의 높이 조정
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/home_on.png'),
                    ),
                    Text(
                      '홈',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/camera.png'),
                  ),
                  Text(
                    '질문하기',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/myquestion.png'),
                    ),
                    Text(
                      '내질문',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
