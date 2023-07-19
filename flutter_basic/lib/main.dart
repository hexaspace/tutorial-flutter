import 'package:flutter/material.dart';

void main() {
  // 기본 위젯 최상위
  runApp(MaterialApp(
    // 화면 구성 도화지
    home: Scaffold(
      body: TestWidget(),
    ),
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 기기상 짤리는 라운드 부분을 제외하고 넣기
    return SafeArea(
      child: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
