class Human {
    final String name;
    Human({required this.name});
    void sayHello() {
        print("Hi my name is $name");
    }
}

enum Team { blue, red }


class Player extends Human {
    final Team team;

    Player({
        required this.team,
      // 부모 클래스의 생성자에 요구되는 인자를 받아서 초기화(?가 맞나)하여 부모 클래스에 전달
        required String name
    }) : super(name: name);

    // 메서드를 오버라이딩할 때는 override 데코레이더를 사용한다.
    @override
    void sayHello(){
        super.sayHello();
        print('hihi ㅋㅋㅋ');
    }
}

void main() {
  var player = Player(team: Team.red, name: 'kim');
  print(player.name);
  player.sayHello();
}