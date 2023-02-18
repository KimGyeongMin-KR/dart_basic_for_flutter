// void는 아무것도 return 하지 않는다는 의미이다.
void sayHello(String name, int age){
  print("Hello $name nice to meet you bro, u r $age right?");
}
// 타입을 정의함
String sayHello_str(String name, int age){
  return ("Hello $name nice to meet you bro, u r $age right?");
}
// fat arrow syntax, 곧 바로 return 한다는 의미
String sayHello_str_2(String name, int age)=> "Hello $name nice to meet you bro, u r $age right?";

num plus(num a, int b)=> a + b;


void main() {
  sayHello("kim", 23);
  var x = sayHello_str("kim", 23);
  print(x.runtimeType);
  print(x);
  print(plus(2.3, 33));
}
