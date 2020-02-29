main(List<String> args) {
  
}

class Person{
  String name;
  int age;

  Person(String name,int age){
    this.name = name;
    this.age = age;
  }

}


class Student extends Person{
  // Student(this.name,this.age):super(name,age); //错误写法

  //子类继承父类的话必须重写父类构造函数，并在重写的函数中使用super
  Student(String name,int age):super(name,age); //正确写法
}
