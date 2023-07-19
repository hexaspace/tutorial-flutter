import 'package:flutter/material.dart';

void main() {
  // 기본 위젯 최상위
  runApp(MaterialApp(
    // 화면 구성 도화지
    home: Scaffold(
      appBar: AppBar(
        title: Text('widget을 배치하기'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.purple.shade100,
        ),
        // expanded는 내부 객체의 크기에 상관없이 꽉 채움
        Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.green.shade100,
              // scroll 안에는 flex를 사용할 수 없음. 반대는 가능.
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.grey, height: 50, width: 50, margin: EdgeInsets.symmetric(vertical: 8)),
                ]),
              ),
            )),
        Flexible(flex: 1, child: Container(color: Colors.red.shade100)),
        Flexible(flex: 2, child: Container(color: Colors.blue.shade100)),
        // flexible은 내부 객체의 크기에 따라 유동적으로 변함
        Flexible(flex: 2, child: Container(height: 50, color: Colors.yellow.shade100)),
      ],
    );
  }
}
