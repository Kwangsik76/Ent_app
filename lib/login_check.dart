import 'package:flutter/material.dart';
import 'login.dart';

class LoginCheck extends StatefulWidget {
  const LoginCheck({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _LoginCheckState createState() => _LoginCheckState();
}

class _LoginCheckState extends State<LoginCheck> {
  bool isTokenValid = false; // 기본값으로 초기화

  void checkLoginStatus() {
    // 토큰 유효성을 체크하는 로직을 구현합니다.
    // 유효한 경우 isTokenValid 값을 true로 설정합니다.
    setState(() {
      isTokenValid = true;
    });
  }

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    if (isTokenValid) {
      return Text('isTokenValid: $isTokenValid');
    } else {
      return LoginPage();
    }
  }
}
