import 'package:flutter/material.dart';
import 'app_bar.dart';

class LoginPage extends StatefulWidget {
  final bool isBackButtonVisible;

  const LoginPage({Key? key, required this.isBackButtonVisible})
      : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(1.0, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void performLogin() {
    // 로그인 성공 여부를 확인하는 로직을 작성합니다.
    bool loginSuccess = true; // 예시로 로그인 성공을 true로 설정합니다.

    if (loginSuccess) {
      Navigator.of(context).pop(); // 로그인 성공 시 이전 페이지로 돌아갑니다.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopMenu(
        isHomePage: false,
        isBackButtonVisible: false,
      ),
      body: SlideTransition(
        position: _slideAnimation,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 250,
            color: Colors.white,
            child: Center(
              child: ElevatedButton(
                onPressed: performLogin, // 로그인 버튼을 누를 때 performLogin 함수를 호출합니다.
                child: Text('Login'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
