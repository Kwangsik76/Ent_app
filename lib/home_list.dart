import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            // 카테고리명과 더보기가 들어갈 자리
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '카테고리명',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // 여기에 링크 삽입
                    },
                    child: Text(
                      '전체보기',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none, // 밑줄 제거
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            // 이미지 리스트가 들어갈 자리
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
              ),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final itemWidth = constraints.maxWidth / 3; // 각 항목의 너비
                  final itemHeight = itemWidth; // 각 항목의 높이를 너비와 동일하게 설정

                  return Container(
                    height: itemHeight,
                    child: Row(
                      children: [
                        for (int index = 0; index < 3; index++)
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(3),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Image.network(
                                    'https://cdn2.thecatapi.com/images/6bt.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Column(
          children: [
            // 카테고리명과 더보기가 들어갈 자리
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '카테고리명',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // 여기에 링크 삽입
                    },
                    child: Text(
                      '전체보기',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none, // 밑줄 제거
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            // 이미지 리스트가 들어갈 자리
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
              ),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final itemWidth = constraints.maxWidth / 3; // 각 항목의 너비
                  final itemHeight = itemWidth; // 각 항목의 높이를 너비와 동일하게 설정

                  return Container(
                    height: itemHeight,
                    child: Row(
                      children: [
                        for (int index = 0; index < 3; index++)
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(3),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Image.network(
                                    'https://cdn2.thecatapi.com/images/6bt.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Column(
          children: [
            // 카테고리명과 더보기가 들어갈 자리
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '카테고리명',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // 여기에 링크 삽입
                    },
                    child: Text(
                      '전체보기',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none, // 밑줄 제거
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            // 이미지 리스트가 들어갈 자리
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
              ),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final itemWidth = constraints.maxWidth / 3; // 각 항목의 너비
                  final itemHeight = itemWidth; // 각 항목의 높이를 너비와 동일하게 설정

                  return Container(
                    height: itemHeight,
                    child: Row(
                      children: [
                        for (int index = 0; index < 3; index++)
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(3),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Image.network(
                                    'https://cdn2.thecatapi.com/images/6bt.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Column(
          children: [
            // 카테고리명과 더보기가 들어갈 자리
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '카테고리명',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // 여기에 링크 삽입
                    },
                    child: Text(
                      '전체보기',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none, // 밑줄 제거
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            // 이미지 리스트가 들어갈 자리
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
              ),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final itemWidth = constraints.maxWidth / 3; // 각 항목의 너비
                  final itemHeight = itemWidth; // 각 항목의 높이를 너비와 동일하게 설정

                  return Container(
                    height: itemHeight,
                    child: Row(
                      children: [
                        for (int index = 0; index < 3; index++)
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(3),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Image.network(
                                    'https://cdn2.thecatapi.com/images/6bt.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
