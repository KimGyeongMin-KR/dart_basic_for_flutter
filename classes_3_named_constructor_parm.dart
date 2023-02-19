class Player {
  final String name; 
  int xp, age;
  String team;
  
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age
    });
  
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