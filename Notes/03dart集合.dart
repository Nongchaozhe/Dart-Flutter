main() {
  var list = ['a','b','c'];
  var reversed = list.reversed;  //返回的不是List，而是('c','b','a')
  print(reversed is List); //==>false
  var reverseList = list.reversed.toList();
  print(reverseList is List); //==>true

  // `0 <= start <= end <= len`
  list.fillRange(1, 2, 'aaa');
  print(list); //==>[a, aaa, c]
  list.fillRange(1, 3, 'bbb');
  print(list); //==>[a, bbb, bbb]


  Map person={
    "name":"小明",
    "age":25,
    "sex":"男"
  };

  print(person.keys); //返回(name,age,sex)
  print(person.keys.toList());

  var set = new Set();set.add('1');set.add('1');
  print(set.toList()); //[1]

  set.addAll([2,3,4,5,6,6]);
  print(set);
}