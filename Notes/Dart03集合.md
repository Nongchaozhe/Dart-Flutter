#### List
```
常用属性：
    length          长度
    reversed        翻转 ==>返回的不是List，而是('c','b','a')，可以用toList()转换成List
    isEmpty         是否为空
    isNotEmpty      是否不为空
常用方法：  
    add         增加
    addAll([1,2]])      拼接数组
    indexOf     查找  传入具体值 indexOf查找数据 查找不到返回-1  查找到返回索引值
    remove      删除  传入具体值
    removeAt    删除  传入索引值
    fillRange(start,end,fillValue)   修改   
    insert(index,value);            指定位置插入    
    insertAll(index,list)           指定位置插入List
    toList()    其他类型转换成List  
    join()      List转换成字符串
    split()     字符串转化成List
    forEach     list.forEach((value){});
    map         var newList = list.map((value){return value*2});
    where       var newList = list.where((value){return value>5});  //返回所有大于5的元素，记得toList()
    any         var ifAny = list.any((value){return value>5})   //只要有一个元素满足就返回true
    every       var ifAll = list.every((value){return value>5})   //所有满足才返回true
```

```
var list = ['a','b','c'];
var reversed = list.reversed;  //返回的不是List，而是('c','b','a')
print(reversed is List); //==>false
var reverseList = list.reversed.toList();
print(reverseList is List); //==>true

// `0 <= start <= end <= len`
list.fillRange(1, 2, 'aaa');
print(list); //==>[a, aaa, c]
list.fillRange(1, 3, 'bbb');
print(list); //==>[a, bbb, bbb]
```

#### set
```
无顺序，不重复，不能通过索引获取值
var set = new Set();set.add('1');set.add('1');
print(set.toList()); //[1]

set.addAll([2,3,4,5,6,6]);
print(set); //{1, 2, 3, 4, 5, 6}
```

#### map
```
无序的键值对
常用属性：
    keys            获取所有的key值
    values          获取所有的value值
    isEmpty         是否为空
    isNotEmpty      是否不为空
常用方法:
    remove(key)     删除指定key的数据
    addAll({...})   合并映射  给映射内增加属性
    containsValue   查看映射内的值  返回true/false
    forEach map where any every
```