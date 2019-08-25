class A {

}

class A1 {

}

class B extends A {

}

class C with A,A1 {

}

// B不能作为mixins，因为B不是直接继承Object
// class D with A,B {

// }

// 如果想要拥有B的方法，如下写法，继承和mixins混合使用
class D extends B with A,A1 {

}

main() {
  D d = new D();
  print(d is D);  //true
  print(d is B);  //true
  print(d is A);  //true
  print(d is A1); //true

  // mixins的实例类型 就是其超类的子类型
}