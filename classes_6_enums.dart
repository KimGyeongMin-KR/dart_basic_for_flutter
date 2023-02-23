// enum은 오탈자 같은 실수를 줄여주는 기능이다.
// 새로운 타입을 만들 수 있는 것이다.
enum Team { red, blue }

class Player {
  String name; 
  int xp;
  Team team;
  
  Player({
    required this.name,
    required this.xp,
    required this.team,
    });
  
}

void main() {
  var nico = Player(name: "kim", xp: 2000, team: Team.blue);

}