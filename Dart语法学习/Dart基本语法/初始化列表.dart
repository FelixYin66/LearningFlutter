main(List<String> args) {
  
}


class Person{
  String name;
  int age;
  final int count; //也可写成 final int count = 10;来初始化，这样写不好，final的值是写完就不可以改变的，在初始化列表中赋值最为妥当

/*
初始化列表（当在初始化时，可选参数age没有给与赋值，将使用默认值10，当可选参数age,count给值时使用传进来的值。这种写法在初始化时就有值，就算拥有final参数时，一样可以初始化）
 多个可选参数，并且包含final属性时的写法
*/ 
//写法1
Person(String name,{int age,int count}) : this.age = age ?? 10,this.count = count ?? 100{
  this.name = name;
  this.age = age;
  // this.count = count; final是不能这样赋值·的
}

//写法2
// Person(this.name,{int age,int count}) : this.age = age ?? 10,this.count = count ?? 100{
//   this.age = age;
//   // this.count = count; final是不能这样赋值·的
// }

}