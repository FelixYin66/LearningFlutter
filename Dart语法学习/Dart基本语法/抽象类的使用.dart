main(List<String> args) {
  // Shape shape = Shape(); //抽象类是不可以实例化的，但是可以通过工厂构造函数创建对象
}


abstract class Shape{
  void getArea();
  String getInfo(){
    return "可以返回";
  }

  // factory Shape(){
  //   //实例一个子类对象
  //   return FelixAngle();
  // }
}

class FelixAngle extends Shape{

  //继承自首相类后，子类必须重写抽象类的抽象方法
  @override
  void getArea() {
    // TODO: implement getArea
    print('重写抽象类方法');
  }
  
}