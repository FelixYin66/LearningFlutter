main(List<String> args) {
  
}


class Person{
  String name;
  int age;

  Person(this.name,this.age);

  //Setter
  set setName(String name){
    this.name = name;
  }
 
  set setAge(int age){
    this.age = age;
  }

  //Getter  get函数中不能添加小括号()
  get getName{
    // return this.name;
    return name;
  }

  get getAge{
    return age;
  }
}