class Player {
  final String name; 
  int xp, age;
  String team;
  // property가 많아진다면 positional constructors 는 관리하기 힘들어질 수 있다.
  // 그리하여 named constructor parameters를 사용하여 인자에 매개변수를 직접 작성함으로 혼란을 피한다
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age
    });
  
}

void main() {
  var p1 = Player(
    name: "kim",
    xp: 1599,
    team: "red",
    age: 12,
  );
}