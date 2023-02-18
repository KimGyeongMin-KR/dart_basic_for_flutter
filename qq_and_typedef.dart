// String capitalizeName(String? name){
//   if(name != null){
//     return name.toUpperCase();
//   }
//   return "KIM";
// }

// String capitalizeName(String? name) => name != null ? name.toLowerCase() : "KIM";

 // QQ(question question) 연산자는 left가 null일 경우 right로 반환한다
String capitalizeName(String? name) => name?.toUpperCase() ?? "KIM";



// QQ ??, 
void main() {
  print(capitalizeName('lee'));
  
  String? name_m_n;
  
  name_m_n ??= 'nico';
  name_m_n = null;
  name_m_n ??= 'nico1';
  
  print(name_m_n); // nico1
  
}



// Typedef
typedef ListOfInts = List<int>; // type alias 

ListOfInts reverseListOfNumbers(ListOfInts list){
  var reversed = list.reversed;
  print(reversed);
  print(reversed is List); // false
  print(reversed is Iterable); // true
  return reversed.toList();
}


void main() {
  print(reverseListOfNumbers([1,2,3]));
}