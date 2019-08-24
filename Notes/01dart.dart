import 'dart:ffi';

main() {
  print('hello');

  //字符串
  var str1 = '''str1
  1''';
  var str2 = 'str2';
  print("字符串：$str1 $str2");
  print(str1 + ' ' + str2);

  //数值
  int a=2;
  double b=2;
  print(a);
  print(b);

  //bool类型
  bool flag = true;
  print(flag);
  if (flag) {
    print(flag);
  }

  var c=1;
  var d='1';
  if (c==d) {
    print('a==b');
  }else {
    print('a!=b');
  }

  //list
  var l = new List();l.add('a');l.add('b');l.add(1);
  print(l);
  var l2=new List<String>();
  l2.add('a');
  // l2.add(123); ==>报错

  //Map
  var person={
    "name":"张三",
    "age":20,
    "work":["程序员","送外卖"]
  };
  print(person);

  //类型判断
  var stris=123;
  if(stris is String){
    print('是string类型');
  }else if(stris is int){
     print('int');
  }else{
     print('其他类型');
  }

}