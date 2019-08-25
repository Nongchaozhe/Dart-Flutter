abstract class Animal {
  eat();
  run();
  printInfo() {
    print('抽象类中的普通方法');
  }
}

//继承抽象类
class Dog extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print('Dog eat');
  }

  @override
  run() {
    // TODO: implement run
    print('Dog run');
  }
}

//哺乳动物，Animal像是定义接口，Mammal来实现
class Mammal implements Animal {
  //...
}

main(){
  Dog dog = new Dog();
  dog.eat();

  //多态，还能定义一个Cat，实现run。
  //赋值给Animal对象，使得不同的animal实例对象的方法有不同的表现
  Animal d = new Dog();
  d.run();
}