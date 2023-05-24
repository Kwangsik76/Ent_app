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
        leading: Container(
          margin: EdgeInsets.all(12), // 로고에 16px의 상단 마진 추가
          child: Image.asset('assets/logo.png'), // 직접 만든 아이콘 추가
        ), // 직접 만든 아이콘 추가
        title: Text(widget.title),
        actions: [
          Container(
              margin: EdgeInsets.all(12), // 로고에 16px의 상단 마진 추가
              child: Image.asset('assets/alram_off.png')),
          Container(
            margin: EdgeInsets.all(12), // 로고에 16px의 상단 마진 추가
            child: Image.asset('assets/seach.png'),
          ),
          Container(
            margin: EdgeInsets.all(12), // 로고에 16px의 상단 마진 추가
            child: Image.asset('assets/menu.png'), // 직접 만든 아이콘 추가
          ), // 직접 만든 아이콘 추가
        ],
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
      ),
      body: Placeholder(),
    );
  }
}
