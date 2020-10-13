
/*
工厂构造函数是可以手动返回对象，普通构造函数是不可以直接返回对象的
普通构造函数：会自动返回创建的对象，不能手动返回
*/

main(List<String> args) {
  Person person = Person.withName('Felix');
  Person person1 = Person.withName('Felix');
  print(identical(person,person1));//输出结果为true
  Person person2 = Person.withName('Felix');
  print(identical(person1,person2)); //输出结果为false 
}

class Person{
  String name;
  int age;

  static final Map<String,Person> map = {};

/*
错误写法,必须使用factory
*/
  // Person.withName(String name){
  //   if(map.containsKey(name)){
  //     return map[name];
  //   }
  // }

  factory  Person.withName(String name){
    if(map.containsKey(name)){
      return map[name];
    }else{
      Person person = Person(name,age:20);
      map[name] = person; //直接将person通过name作为key放入到Map中
      return person;
    }
  }

  //可选命名构造函数
  Person(this.name,{int age}){
    this.age = age;
  }
}