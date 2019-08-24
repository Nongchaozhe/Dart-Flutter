main() {
  String someFunc(String name,{String sex='男',int age}){
    print(name);
    return '1';
  };    //调用的时候需要写参数名
  print(someFunc('小明',sex:'男',age:23));


  //匿名方法：将方法赋值给一个变量
  var printNum=(){
    print(123);
  };

  printNum();

  ((int n){
    print(n);
  })(218);
}

