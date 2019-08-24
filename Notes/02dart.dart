main() {
  print('运算符');

  //??=：如果a为空，赋值8
  int a=6;
  a??=8;
  print(a); //==>6

  int b;
  b??=8;
  print(b); //==>8

  //??运算符，c为空赋值c，c不为空赋值2
  var c=1;
  var d= c ?? 2;
  print(d);

  //类型互转
  String str='1.2'; //写整型也没问题，但是为空''=>会报错(可用try{}catch(){})
  var myNum=double.parse(str);
  print(myNum is double);
}