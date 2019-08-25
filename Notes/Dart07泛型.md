#### 泛型
```javascript
List就是一个泛型类，不指定类型，可以添加不同类型的对象

泛型：解决类、接口、方法的复用性，以及对不特定数据类型的校验(类型校验)

// 泛型方法
// => 传入和返回类型都做校验，必须是T类型
// T getData<T>(T value){
//     return value;
// }

// 使用 getData<String>('hello');

// => 不对返回参数进行校验
// getData<T>(T value){
//     return value;
// }

// 泛型类
 class PrintClass<T>{
      List list=new List<T>();
      void add(T value){
          this.list.add(value);
      }
      void printInfo(){          
          for(var i=0;i<this.list.length;i++){
            print(this.list[i]);
          }
      }
 }
 PrintClass p=new PrintClass<String>();
// 其实就是对类内部使用的变量定义泛型，进行约束

// 泛型接口：约束实现它的子类的内部的value类型必须和实例化子类指定的类型一样
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key, T value);
}

class FlieCache<T> implements Cache<T>{
  @override
  getByKey(String key) {    
    return null;
  }

  @override
  void setByKey(String key, T value) {
   print("我是文件缓存 把key=${key}  value=${value}的数据写入到了文件中");
  }
}
```

