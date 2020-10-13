import 'dart:math';
main(List<String> args) {
  
}

class Person{
  String name;
  int age;
  int height;
  num a;
  num b;
  num count;

//构造方法  
  // Person(String name,int age){
  //   this.name = name;
  //   this.age = age;
  // }
//构造方法精简方式，等同于上面函数 Person(String name,int age);



/*
但是在开发中, 我们确实希望实现更多的构造方法，怎么办呢？
因为不支持方法（函数）的重载，所以我们没办法创建相同名称的构造方法
*/ 

//命名构造函数1
Person.withAgeNameHeight(this.name,this.age,this.height);

//命名构造函数2
Person.withArgments(String name,int age){
  this.name = name;
  this.age = age;
}

//命名构造函数3
Person.withArgments2(String name){
  this.name = name;
}

//命名构造函数4
Person.withArgments3(int age){
  this.age = age;
}

  //重写方法
  @override
  String toString(){
    return'name = $name age = $age';
  }
}
