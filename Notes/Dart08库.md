#### 库
```JavaScript
每个Dart文件都是一个库

1、我们自定义的库     
    import 'lib/xxx.dart';
2、系统内置库       
    import 'dart:math';    
    import 'dart:io'; 
    import 'dart:convert';
3、Pub包管理系统中的库  
    https://pub.dev/packages
    https://pub.flutter-io.cn/packages
    https://pub.dartlang.org/flutter/

    1、需要在自己想项目根目录新建一个pubspec.yaml
    2、在pubspec.yaml文件 然后配置名称 、描述、依赖等信息
    3、然后运行 pub get 获取包下载到本地  
    4、项目中引入库 import 'package:http/http.dart' as http; 看文档使用
```

```javascript
模块冲突时，比如两个库中有同样的Person类
import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;


Element element1 = new Element();           // Uses Element from lib1.
lib2.Element element2 = new lib2.Element(); // Uses Element from lib2.
```

```javascript
只导入库的一部分
- show关键字，只导入foo
      import 'package:lib1/lib1.dart' show foo;
- hide关键字，隐藏不需要的foo
      import 'package:lib2/lib2.dart' hide foo;   
````

```javascript
延迟加载、懒加载，在需要的时候加载：减少App的启动时间

懒加载使用deferred as关键字来指定，如下例子所示：

import 'package:deferred/hello.dart' deferred as hello;

当需要使用的时候，需要使用loadLibrary()方法来加载：

greet() async {
    await hello.loadLibrary();
    hello.printGreeting();
}
````

#### async,await
```javascript
void main() async {
  var result = await doSth();   //await等待异步方法执行完成，只有async的方法才能用await
  print(result);
}

async和await
  这两个关键字的使用只需要记住两点：
    只有async方法才能使用await关键字调用方法
    如果调用别的async方法必须使用await关键字

async是让方法变成异步。
await是等待异步方法执行完成。
```