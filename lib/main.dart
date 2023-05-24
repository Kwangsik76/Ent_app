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
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // 첫 번째 리스트
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  '이나무는?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // 더보기 버튼 클릭 시 실행할 동작
                },
                child: Text(
                  '더보기',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),

          // 두 번째부터 이미지 스와이프 가능한 부분
          Container(
            height: 108, // 이미지 높이 조정
            child: PageView.builder(
              itemCount: 10, // 전체 이미지 개수
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    image: DecorationImage(
                      image: AssetImage('assets/img/tree1.jpg'),
                      fit: BoxFit.cover, // 이미지 크기를 부모 컨테이너에 맞게 조정
                    ),
                  ),
                  width: 108, // 이미지 가로 크기를 108로 지정
                  height: 108, // 이미지 세로 크기를 108로 지정
                );
              },
              pageSnapping: true,
              scrollDirection: Axis.horizontal,
              controller: PageController(viewportFraction: 0.3),
            ),
          ),
        ],
      ),
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
