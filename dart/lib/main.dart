// import 'package:flutter/material.dart';

enum Team { red, blue, yellow, green, orange }

class Player {
  final String name;
  int xp = 1500; // 초기값
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  }); // construnctor
  // 특정 값이 초기값은 다른 생성자
  Player.createdBluePlayer({
    required String name,
    required int xp,
  })  : this.name = name,
        this.xp = xp,
        this.team = "blue";
  // json에서 데이터 받았ㅇ르 때ㅔ

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("hello my name is $name");
    // 메소드 내 지역변수가 이름이 겹치지 않는다면, this를 사용하지 않는다.
  }
}

void main() {
  var player = Player(
    name: "doyeon",
    xp: 88,
    team: "green",
  ); // new Player()도 가능
  // player.name = "hy";
  player.sayHello();
  // 초기값이 할당되는 다른 생성자
  var bluePlayer = Player.createdBluePlayer(
    name: "bbpersion",
    xp: 93,
  );

  //json으로부터 받아ㅗ기
  var apiData = [
    {"name": "ddd", "team": "red", "xp": 0},
    {"name": "kkk", "team": "yellow", "xp": 0},
    {"name": "ppp", "team": "orange", "xp": 0},
  ];
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
