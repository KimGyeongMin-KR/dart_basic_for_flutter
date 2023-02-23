class Player {
  String name; 
  int xp;
  
  Player({
    required this.name,
    required this.xp
    });
  
}

void main() {
    // 인스턴스의 속성 값을 변경하기 위해서 아래 주석 처럼쓰는 불편함을 cascade notation이 해결해준다.
    // nico.name nico.xp
  var nico = Player(name: "kim", xp: 2000)
  ..name = 'ccss'
  ..xp = 2323;
  var potato = nico
    ..name = 'gaeng'
    ..xp = 2000000;
  
  // ccss gaeng이 아닌 둘 다 gaeng이다. 주소값을 참조하는 것을 알 수 있다. 
  print(nico.name);
  print(potato.name);
  
  // 위 처럼 선언을 하지 않고 아래 처럼 이어서 쓰는 것도 가능하다
  nico
    ..name = 'lee'
    ..xp = 200;
  
  print(nico.name);
  print(potato.name); 
}