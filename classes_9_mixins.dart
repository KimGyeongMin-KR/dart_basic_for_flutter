// Mixin은 생성자가 없는 클래스를 의미한다.
// 생성자가 있다면 부모를 호출하여 값을 넘겨 줘야한다 : super()
// with 키워드를 사용하고, 내부의 프로퍼티와 메서드를 가져오는 것 뿐이다.

class Strong {
    final double strenghtLevel = 1550.99;
}

class QuickRunner {
  void runQuick() {
    print('rururururunnn');
  }
}

class Tall {
  double height = 1.99;
}

class Player with Strong, QuickRunner, Tall {
}

void main() {
  var p1 = Player();
  var p2 = Player();
  print(p1.height);
  print(p2.height);
  p1.height = 23;
  print(p1.height);
  print(p2.height);
  
}