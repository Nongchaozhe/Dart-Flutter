class Person{
  String name;
  int age; 
  String _job;  //私有属性，必须单独抽出模块才有效。如果跟调用的地方在同一个文件是无效的，还是可以访问的，只不过参数名字是_xx

  // 默认构造函数
  Person(String name,int age,String job) {
    this.name=name;
    this.age=age;
    this._job = job;
  }
  // 默认构造函数的简写
  // Person(this.name,this.age,this._job);

  // 自定义类的命名构造函数
  Person.setInfo(String name,int age) {
    this.name=name;
    this.age=age;
  }

  void printInfo(){   
    print("${this.name}----${this.age}");
    if (this._job != null) {
      this._privateFunc();
    }
  }

  // 私有方法
  void _privateFunc() {
    print('_privateFunc:has job');
  }
}

class Rect {
  num height;
  num width;
  Rect(this.height,this.width);

  // 函数方法的写法
  // area() {
  //   return this.height*this.width;
  // }

  //get修饰符，就是一个计算属性！属性！调用的时候直接r.area;
  get area {
    return this.height*this.width;
  }

  //set修饰符
  set areaHeight(value) {
    this.height = value;
  }
}

class Student {
  String name;
  int score;
  String level;
  //构造函数体运行之前初始化实例变量（初始化列表）
  Student(String name):score=100,level='Excellent' {
    this.name = name;
    print("${this.name}, ${this.score}, ${this.level}");
  }
}

main() {
  Person p = new Person('默', 18, 'free');
  p.printInfo();

  Person p2 = new Person.setInfo('默', 18);
  p2.printInfo();

  //将类单独抽离成一个模块，就是单独一个文件，在使用的地方引入
  //import 'xx/Person.dart';

  Rect rect = new Rect(18, 18);
  rect.areaHeight = 2;
  print(rect.area);

  Student stu = new Student('默');
}