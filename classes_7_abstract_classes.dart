// 수많은 청사진(?)에 메서드의 이름과 반환 타입만 정해서 정의할 수 있다.
abstract class Human {
  // 추상화 클래스의 메서드에서 void에서 String을 반환하게끔 오버라이딩을 할 수 있지만 타입이 지정되어 있다면 변경 불가능하다. ex) String -> int
  void walk();
  // 추상화 클래스의 메서드에서  오버라이딩 시에 매개변수의 타입을 변경하는 것은 안됨
  void throwing(String stuff, int power, dynamic eny);
  
}
enum Team { red, blue }

class Player extends Human{
  String name; 
  int xp;
  Team team;
  
  Player({
    required this.name,
    required this.xp,
    required this.team,
    });
  
  String walk(){
   print('hi'); 
   return 'hihi';
  }
  
  void throwing(String stuff, int power, dynamic eny){
    print('$stuff');
  }
  
}

void main() {
  var nico = Player(name: "kim", xp: 2000, team: Team.blue);
  nico.walk();
  nico.throwing('kk', 299, 'zzz');

}