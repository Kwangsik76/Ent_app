import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_bar.dart';

class NickName extends StatelessWidget {
  const NickName({Key? key}) : super(key: key);

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
            children: [
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '닉네임',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: '수원광자',
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
              SizedBox(height: 16.0),
              Text(
                '한글 및 영문, 숫자만 가능하며, 최대 15자 까지만 등록 가능합니다.',
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
