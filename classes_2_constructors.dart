// 생성자 사용하기
class Player {
  // final 값인데 선언을 안해준다면 에러가 발생하므로 late를 사용한다.
//   late final String name; 
//   late int xp;
  
//   Player(String name, int xp){
//     this.name = name;
//     this.xp = xp;
//   }
  
  final String name; 
  int xp;
  Player(this.name, this.xp);
  
  void sayHello(){
    print('hi my name is $name');
  }
}

void main() {
  var p1 = Player("kim", 1599);
  p1.sayHello();
  var p2 = Player("lee", 1300);
  print(p2.name);
}