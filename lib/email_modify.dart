import 'package:flutter/material.dart';
import 'app_bar.dart';

class EmailAddress extends StatefulWidget {
  const EmailAddress({Key? key}) : super(key: key);

  @override
  _EmailAddressState createState() => _EmailAddressState();
}

class _EmailAddressState extends State<EmailAddress> {
  final TextEditingController _emailPrefixController = TextEditingController();
  final TextEditingController _emailSuffixController = TextEditingController();

  @override
  void dispose() {
    _emailPrefixController.dispose();
    _emailSuffixController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopMenu(
        isHomePage: false,
        isBackButtonVisible: true,
        title: '기본정보 변경',
      ),
      resizeToAvoidBottomInset: true, // 키보드가 올라올 때 화면 resize
      body: Container(
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '이메일',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _emailPrefixController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'ks8890',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    '@',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      controller: _emailSuffixController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'naver.com',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                '사용중인 이메일 주소를 입력해주세요.',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          // 첫 번째 TextButton의 동작
                        },
                        child: Text('취소'),
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          backgroundColor: Colors.grey[700],
                          padding: EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          // 두 번째 TextButton의 동작
                        },
                        child: Text('변경'),
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          backgroundColor: Colors.lightGreen,
                          padding: EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
