import 'package:flutter/material.dart';

void main() {
  // 기본 위젯 최상위
  runApp(MaterialApp(
    // 화면 구성 도화지
    home: Scaffold(
      appBar: AppBar(
        title: Text('Container study'),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      // color: Color.fromARGB(255, 164, 255, 237), boxdecoration 을 사용하려면 여기서  null이어야함
      padding: EdgeInsets.fromLTRB(10, 12, 13, 14),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.pink.shade100,
          border: Border.all(
            color: Colors.pink.shade300,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-10, 10),
              blurRadius: 10,
              spreadRadius: 2,
            ),
            BoxShadow(
              color: Colors.blue,
              offset: Offset(10, -10),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ]),
      child: Center(
        child: Text('hello containercontainercontainercontainercontainercontainercontainer'),
      ),
    );
  }
}
