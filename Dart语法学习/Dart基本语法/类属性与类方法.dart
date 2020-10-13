main(List<String> args) {
  Person.address = "北京";
  Person.eating();

Person.address = "深圳";
Person.eating();


//使用枚举
var color = Colors.blue;
print(color);

}

class Person{
  //成员变量
  String name;
  //类属性或者静态变量（通过类调用）
  static String address;

//静态方法也叫做类方法（通过类调用）
  static void eating(){
    print("${Person.address}");
  }
}


//枚举声明
enum Colors{
  red,
  blue
}