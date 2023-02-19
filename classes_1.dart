class Player {
  // 클래스에서 property를 선언할 때는 타입을 사용해서 정의한다.
  final String name = "nico";
  int xp = 1500;
  
  void sayHello(){
    // class 내의 메서드에서는 this를 사용하지 않는 것을 권고한다.
    // print('hi my name is $name'); // 권장 사항
    print('hi my name is ${this.name}');
    // 만약 메서드의 지역변수를 property의 이름을 쓰고 싶을 때 final이더라도 var를 사용해서
    // 바꿀 수 있다. 선언 뒤에 property에 접근할 때는 this를 사용한다.
    var name = 'kim'; // 앞서 $name이 들어간 print는 에러가 발생
    print(name);
    print(this.name);
      
  }
}

void main() {
  var p1 = Player();
//   p1.name = 'kim';
//   print(p1.name);
  p1.sayHello();
}