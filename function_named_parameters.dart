String sayHello(String name, int age, String country){
  return "Hello $name you are $age, and live in $country";
}

// named parameters를 사용한다면 매개변수의 순서를 기억할 필요가 사라진다. 사용법은 중괄호로 묶는다.
// null safety로 인해 named parameters를 사용할 때 null 값이 들어올 경우를 처리해야한다.
// default 값을 정의 하는 방법이 있고
String sayHello_named({String? name, int age=12, String country='korea'}){
  return "Hello $name you are $age, and live in $country";
}
// default값 말고 꼭 필요한 매개변수에는 required modifier를 이용할 수 있다.
String sayHello_named_2({
    required String name,
    required int age,
    required String country
  }){
  return "Hello $name you are $age, and live in $country";
}

void main() {
  sayHello('kim', 39, 'ko');
  print(sayHello_named(
    country: 'korea',
  ));
  
  sayHello_named_2(
    age: 12,
    name: 'kim',
    country: 'japan'
  );
}
