#### 环境搭建
1. https://dart.dev - google开发，可用于web、服务器、移动应用、物联网等领域的开发。诞生于2011年，号称要取代JS。直到flutter，才被重新重视
2. homebrew安装dart sdk，官网有
3. VSCode：安装dart插件，安装code runner插件来执行文件
4. 文件后缀.dart
5. 代码写在`void main(){}`中

#### 变量、常量、命名规范
1. 脚本语言，**可自动类型推断**。var来声明，当然也可以String，int等明确声明类型
2. 命名规范：区分大小写(其他都大同小异：不要使用保留关键字，不要数字开头)
3. 常量：
    - const：一开始就赋值
    - final：开始可以不赋值，只赋值一次。final拥有const编译时常量的特性，它是运行时常量，是惰性初始化，在运行时第一次使用才初始化

#### 类型
1. Number
2. 字符串类型：
```
三个单(双)引号可以支持多行
'''a
b
c
'''
"""a"""

拼接：
var str1 = 'str1';
var str2 = 'str2';
print("字符串：$str1 $str2");
print(str1 + ' ' + str2);
```
3. 数值类型
```
int,double
```
4. bool类型
```
true/false，if-else的使用
a=1,b='1' a==b为false，==不会强制转换类型
```
5. List(数组/集合)
```
['a','b','c']
.length
var l = new List();l.add('a');l.add('b');l.add(1);
//可以不同类型

//指定List类型
var l2=new List<String>();
l2.add('a');
// l2.add(123); ==>报错
```
6. Map(字典)
```
var person={
  "name":"小明",
  "age":25,
  "work":["程序员",'自由职业']
};

var p = Map();
p["name"]="小明";
p["age"]=25;
p["work"]=["程序员",'自由职业'];
```
7. 类型判断
```
is
var str=123;
if(str is String){
    print('是string类型');
}else if(str is int){
    print('int');
}else{
    print('其他类型');
}
```

