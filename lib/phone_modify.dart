import 'package:flutter/material.dart';
import 'app_bar.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: TopMenu(
          isHomePage: false,
          isBackButtonVisible: true,
          title: '기본정보 변경',
        ),
        body: Column());
  }
}
