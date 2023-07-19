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
    return Stack(
      children: [
        Container(width: 500, height: 500, color: Colors.red.shade100),
        Container(width: 400, height: 400, color: Colors.orange.shade100),
        // 상대적 수치로 이동 - 비율
        Align(alignment: Alignment(0.2, 0.5), child: Container(width: 300, height: 300, color: Colors.yellow.shade100)),
        // 공간은 전체 공간을 활용. 상대적 수치로 이동 - 명명
        Align(alignment: Alignment.topCenter, child: Container(width: 200, height: 200, color: Colors.green.shade100)),
        // 공간은 가장 처음 widget을 기반.  절대적 수치로 이동
        Positioned(bottom: 50, right: 30, child: Container(width: 100, height: 100, color: Colors.blue.shade100)),
      ],
    );
  }
}
