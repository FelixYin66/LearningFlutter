main(List<String> args) {
  
}

class Person{
  void eat(){
    print("吃吃吃吃吃吃吃吃");
  }
}

class Flyer{
  void fly(){
    print("飞飞飞飞");
  }
}

class Runner{
  void run(){
    print("跑跑跑跑");
  }
}


/*
混入的类不能使用class，需要使用mixin
使用混入时，不需要实现混入类的方法实现
*/
mixin Flyer2{
  void fly(){
    print("飞飞飞飞2");
  }
}

mixin Runner2{
  void run(){
    print("跑跑跑跑2");
  }
}


//隐式接口的使用，使用类作为接口（因为Dart中不能实现多继承）
class SuperMan implements Flyer,Runner{

@override
  void fly() {
    // TODO: implement fly
  }


  @override
  void run() {
    // TODO: implement run
  }
}


//混入的使用 继承Person,实现Flyer,Runner的fly，run方法
class SuperMan2 extends Person with Flyer2,Runner2 {

@override
  void eat() {
    // TODO: implement eat
    super.eat();
  }

  // @override
  // void fly() {
  //   // TODO: implement fly
  //   super.fly();
  // }

  // @override
  // void run() {
  //   // TODO: implement run
  //   super.run();
  // }

}


