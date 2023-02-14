void main() {
  var name = "김경민"; // 메서드 내에서는 var, class 내에서는 타입을 명시

  String name2 = 'ff';
  name = '기순';
  
  // 다이나믹 변수 선언, 꼭 필요할 때만 사용하도록 하자
  dynamic x;
  x = '김경민';
  x = 1;
  if(x is String){
    print(x.length);
  }
  
  // null safety null값을 참조할 수 없도록 하는 것
  // null 값을 참조하면 에러
  // null일 수도 있는 값이 들어올 수 있다면 타입 뒤에 ?를 붙이자 > nullable
  String? kim = 'kimkim';
  kim = null;
//   if (kim != null){
//     print(kim.isNotEmpty);
//   }
  kim?.isNotEmpty;
  
  // final varibales, 한 번 선언 후 바꿀 수 없다. js의 const와 같다
  final lee = 'lee';
  final String kee = 'kee'; // 타입을 명시적으로 표현
  
  // late는 데이터 없이 선언만 해주는 것이다.
  late final String str_data;
  // 데이터를 넣기 전에는 접근을 막는다. API 작업에서 많이 사용할 것
  // print(str_data);
  str_data = '후후';
  print(str_data);
  
  // const, js ts의 const와는 다르다
  // compile-time constant 컴파일할 때 어떤 값인지 알고있다면 const
  // API작업과 같이 들어오는 값이 아직 불확실하다면 final이다.
  const max_allowed_price = 30000;
  // const API = blabla(); not allowed
  
}
