import 'package:flutter/material.dart';

void main() {
  // 기본 위젯 최상위
  runApp(MaterialApp(
    // 화면 구성 도화지
    home: Scaffold(
      appBar: AppBar(
        title: Text('widget을 배치하기'),
      ),
      body: RowContainer(),
    ),
  ));
}

class PlaceHolderWidget extends StatelessWidget {
  const PlaceHolderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 이 위치에 어떤 위젯이 올것이니, 사이즈만큼 자리를 차지해라
    return Placeholder(
      child: Text('Hello World'),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // 스크롤이 가능한 위젯
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 플러터에서 chlid를 가장 마지막 위치로 보내는게 룰이다
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.red.shade100,
            child: Text('container 1'),
          ),
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue.shade100,
            child: Text('container 2'),
          ),
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.green.shade100,
            child: Text('container 3'),
          ),
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.red.shade100,
            child: Text('container 1'),
          ),
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue.shade100,
            child: Text('container 2'),
          ),
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.green.shade100,
            child: Text('container 3'),
          ),
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.red.shade100,
            child: Text('container 1'),
          ),
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue.shade100,
            child: Text('container 2'),
          ),
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.green.shade100,
            child: Text('container 3'),
          ),
        ],
      ),
    );
  }
}

class RowContainer extends StatelessWidget {
  const RowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade100,
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 80,
              color: Colors.red.shade100,
              child: Text('container 1'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue.shade100,
              child: Text('container 2'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green.shade100,
              child: Text('container 3'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.red.shade100,
              child: Text('container 1'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue.shade100,
              child: Text('container 2'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green.shade100,
              child: Text('container 3'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.red.shade100,
              child: Text('container 1'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue.shade100,
              child: Text('container 2'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green.shade100,
              child: Text('container 3'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.red.shade100,
              child: Text('container 1'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue.shade100,
              child: Text('container 2'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green.shade100,
              child: Text('container 3'),
            ),
          ],
        ),
      ),
    );
  }
}

// mainAxis, crossAxis를 이용해서 위젯을 배치할 수 있다
class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 80,
              color: Colors.red.shade100,
              child: Text('container 1'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue.shade100,
              child: Text('container 2'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green.shade100,
              child: Text('container 3'),
            ),
          ],
        ),
        Container(
          width: 300,
          height: 100,
          color: Colors.grey.shade300,
          child: Text('container 4'),
        ),
      ],
    );
  }
}
