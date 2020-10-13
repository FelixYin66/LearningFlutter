/*
 在某些情况下, 我们希望在一个构造方法中去调用另外一个构造方法, 这个时候可以使用重定向构造方法：
 在一个构造函数中，去调用另外一个构造函数（注意：是在冒号后面使用this调用）
*/
main(List<String> args) {
  
}

class Person{
  String name;
  int age;
  double height;

  /*
在一个构造函数中，去调用另外一个构造函数（注意：是在冒号后面使用this调用）
但是无法通过命名构造函数去调用另一个命名构造函数，因为重定向必须使用this去调用构造函数
*/
  //重定向构造函数1
  // Person(String name,int age){
  //   this.name = name;
  //   this.age = age;
  // }
  // Person.withNameAge(String name,int age):this(name,age);

  //重定向构造函数 2
  Person(String name,int age):this.withNameAgeHeight(name,age,30);
  Person.withNameAgeHeight(String name,int age,double height){
    this.name = name;
    this.age = age;
    this.height = height;
  }

  //重定向构造函数 3
  Person.withName(String name){
    this.name = name;
  }
  Person.withNameAge(String name,int age,double height):this.withName(name);
}