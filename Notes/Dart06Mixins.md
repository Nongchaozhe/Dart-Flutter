#### Mixins
```
混入，在类中混入其他功能。可以使用Mixins可以实现类似多继承的功能(不是多继承，只是类似)

Mixins使用条件，当前2.x版本的条件：
- 作为mixins的类只能继承自Object ==>一层继承，A继承B继承Object，那么A就不能mixins的类
- 作为mixins的类不能有构造函数
- 一个类可以mixins多个mixins类
- mixins不是继承、不是借口，而是一种全新的特性

使用with关键字来实现
```