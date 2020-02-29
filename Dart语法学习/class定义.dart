/*
定义类结构如下：
class 类名{
  类型 成员名;
  返回值类型 方法名(参数列表){
    方法体
  }
}


*/
main(List<String> args) {
  //identical 可以比对两个对象是否为同一个对象
  final a = const Person();
  final b = const Person();
  print(identical(a,b)); //true

  final m = Person();
  final n = Person();
  print(identical(m,n)); //false

  //对象创建及函数调用
  Dog dog = Dog();
  dog.name = 'Felix';
  dog.eat();
}


class Person{
  const Person();
}

class Dog{
  String name;
  eat(){
    print('name === $this.name 吃东西');
  }
}