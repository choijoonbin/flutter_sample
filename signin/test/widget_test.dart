import 'dart:math';

List<int> lottoNumber() {
//   final random = Random();
//   final Set<int> lottoSet = {};
//   var num;
//
//   while (lottoSet.length != 6)
//
// //   for(int i=0; i<6; i++){
// //     num = random.nextInt(45)+1;
//     lottoSet.add(random.nextInt(45) + 1);
// //
// }

  var number = (List<int>.generate(45, (i) => i + 1)..shuffle()).sublist(0, 6);
  print('당첨번호');
  print(number);

  return number;
}

List<int> myNumber() {
//   final random = Random();
//   final Set<int> mySet = {};
//   var num;
//
//   while (mySet.length != 6)
//
// //   for(int i=0; i<6; i++){
// //     num = random.nextInt(45)+1;
//     mySet.add(random.nextInt(45) + 1);
// //   }
  var number2 =
      (List<int>.generate(45, (index) => ++index)..shuffle()).sublist(0, 6);
  print('당첨번호');
  print(number2);

  return number2;
}
// }

void checkNumber(List<int> number, List<int> number2) {
  int match = 0;

  for (int lotto in number) {
    for (int myNum in number2) {
      if (lotto == myNum) {
        match++;
        print('당첨번호 : $myNum');
      }
//       print('로또번호 = $lotto');
//       print('내 추첨번호 = $myNum');
    }
  }

  print('$match개의 당첨번호가 있습니다');
}

void main() {
  List<int> lottoFinal = lottoNumber();
  List<int> myFinal = myNumber();

  checkNumber(lottoFinal, myFinal);

  var test = (List<int>.generate(45, (i) => i + 1)..shuffle()).sublist(0, 6);
  print(test);

  Person p1 = new Person();

  p1.age = 20;
  p1.name = 'James';
  p1.show();

  p1
    ..name = 'Jamie'
    ..setA(30)
    ..show();

//   List<String> rainbow = ['빨','주','노','초','파','남','보'];

//   rainbow.forEach((name){
//     print(name);
//   });

//   for(String x in rainbow){
//     print(x);
//   }

//   for(int i = 0; i<rainbow.length; i++){
//     print(rainbow[i]);
//   }

//   forward(5);
}

class Person {
  String? name;
  int? age;

  void setA(int x) {
    this.age = x;
  }

  void show() {
    print(this.age);
    print(this.name);
  }
}
// void forward(int move){
//   for(int i=1; i<move; i++){
//     print('$i칸 이동');
//   }
