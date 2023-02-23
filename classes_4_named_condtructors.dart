class Player {
  final String name; 
  int xp, age;
  String team;
  
  Player({
    // named constructor parameters
    required this.name,
    required this.xp,
    required this.team,
    required this.age
    });

  // named constructors
  // 받는 인자를 조절하여 받을 수 있다. (오버로딩같은 느낌, 이름 지정 생성자)
  // 클래서.초기화메서드({매개변수들}) : 속성값을 원하는 값으로 초기화
  Player.createBluePlayer({
    required String name,
    required int age
   }) : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;
  
  Player.createRedPlayer(String name, int age) :
  this.age = age,
  this.name = name,
  this.team = 'red',
  this.xp = 0;
  
  void sayHello(){
    print('hi my name is $name');
  }
}

void main() {
  var p1 = Player(
    name: "kim",
    xp: 1599,
    team: "red",
    age: 12,
  );
  p1.sayHello();
  
  var p2 = Player.createRedPlayer("park", 100);
  print("안녕 ${p2.team}");
}