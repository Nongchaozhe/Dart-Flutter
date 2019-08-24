#### 函数
```
返回类型  方法名称（参数1，参数2,...）{
    方法体
    return 返回值;
}

方法可以嵌套

参数可以为可选，用[参数1]
String someFunc(String var1,[int var2,int var3]){}; //2，3为可选，可以写多个

默认参数，[String sex='男']
String someFunc(String var1,[String sex='男',int var3]){};    //不传sex，默认值为男

命名参数：
String someFunc(String name,{String sex='男',int age}){};    //调用的时候需要写参数名，顺序不能变
someFunc('小明',sex:'男',age:25);

方法作为参数
f1(){};
f2(fn){fn()};
调用：f2(f1);

箭头函数：
list.forEach((value){
  print(value);
});
list.forEach((value)=>print(value));
list.forEach((value)=>{
  print(value)
});

//匿名方法：将方法赋值给一个变量
var printNum=(){
print(123);
};

printNum();

//自执行方法，不需要主动去调用
((){
    //XXX
})();

((int n){
    print(n);
})(218);

```

#### 闭包
```
1、全局变量特点:全局变量常驻内存、全局变量污染全局
2、局部变量的特点:不常驻内存会被垃圾机制回收、不会污染全局

闭包：常驻内存，不污染全局(解决上面的问题)
闭包: 函数嵌套函数, 内部函数会调用外部函数的变量或参数, 变量或参数不会被系统回收(不会释放内存)
闭包的写法： 函数嵌套函数，并return 里面的函数，这样就形成了闭包

fn(){
    var a=123;  /*不会污染全局   常驻内存*/
    return(){			
        a++;			
        print(a);
    };        
}     
var b=fn();	
b();    //124
b();    //125
b();    //126
```