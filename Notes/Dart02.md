#### 运算符
```
常规的不列举了

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
```

#### 类型转换
```
Number,String互转
=> toString();
=> int.parse(); double.parse();

String str='1.2'; //写整型也没问题，但是为空''=>会报错(可用try{}catch(){})
var myNum=double.parse(str);
print(myNum is double);

var myNum=12;
var str=myNum.toString();
print(str is String);

BOOL类型
var str='';str.isEmpty; =>true
var a;a==null; ==>true
var a;a==0; ==>false
var a=0/0;a.isNaN; ==>true，b不会报错，返回NaN
```

#### 循环语句
```
常规写法，不累述
```
