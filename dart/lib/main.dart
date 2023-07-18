void main() {
  // 가변형 var / dynamic
  var a = 10;
  a = 2;
  // a = 'string';  // error
  dynamic b = 20;
  b = 'string'; // not error

  // null 처리 연산자
  int? num1; // null able
  int num2 = 10;
  print(num1! + num2); // error, not null이라고 !가 안심해줬지만, 실행시키면 오류 발생됨
  print((num1 ?? 5) + num2); // success, num1이 null이면 5 + num2 실행
}
