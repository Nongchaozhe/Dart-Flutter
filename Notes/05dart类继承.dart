class Student {
  static String school = 'WZ School';
  String name;
  int age;
  Student(this.name,this.age);
  static void show() {
    print(school);
    // print(this.name); =>不能访问费静态属性、方法也不行
  }
  printInfo() {
    print(school + '...' + this.name);
  }
}

class SeniorStu extends Student {
  String sex;
  // super关键字调父类构造方法，sex为当前类的传参
  SeniorStu(String name, int age, String sex) : super(name, age) {
    this.sex = sex;
  }

  @override //可写可不写
  printInfo() {
    super.printInfo();  //调用父类方法
    print(Student.school + '...' + this.name + '...' + this.sex);
  }
}

main() {
  Student.show();

  var stu;
  stu='';
  stu=new Student('默',18);
  if(stu is Student) {
    print('是学生');  //会打印
  }
  stu.printInfo();  //直接调用是没问题的，但是代码不会有提醒
  (stu as Student).printInfo(); //类型转换下

  (stu as Student)..name = "默默"
                  ..age = 18;

  SeniorStu sStu = SeniorStu('默默', 18, 'Male');
  sStu.printInfo();
}

