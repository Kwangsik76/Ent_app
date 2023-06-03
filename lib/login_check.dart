// import 'package:flutter/material.dart';

// class LoginCheckPage extends StatefulWidget {
//   final Widget child;
//   final bool isTokenValid;

//   const LoginCheckPage(
//       {Key? key, required this.child, required this.isTokenValid})
//       : super(key: key);

//   @override
//   _LoginCheckPageState createState() => _LoginCheckPageState();
// }

// class _LoginCheckPageState extends State<LoginCheckPage> {
//   @override
//   void initState() {
//     super.initState();
//     checkLoginStatus();
//   }

//   void checkLoginStatus() {
//     bool isTokenValid = true; // isTokenValid 값을 true로 설정합니다.

//     if (!isTokenValid) {
//       Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) => LoginPage(),
//       ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return widget.child;
//   }
// }
