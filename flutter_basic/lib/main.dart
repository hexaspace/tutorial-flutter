import 'package:flutter/material.dart';

void main() {
  // 기본 위젯 최상위
  runApp(MaterialApp(
    // 화면 구성 도화지
    home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Hello World'),
          actions: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  print('Home button is clicked');
                }),
            IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () {
                  print('play_arrow button is clicked');
                }),
          ],
        ),
        body: TestWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton is clicked');
          },
          child: Icon(Icons.waves),
        )),
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
            fontSize: 60,
          ),
        ),
      ),
    );
  }
}
