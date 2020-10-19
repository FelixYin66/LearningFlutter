
//异步操作及网络使用
main(List<String> args) {
  // testFuture();
  // testFuture02();
  testFuture03();
}


/*
Future 使用
*/

//Future 简单异步执行
testFuture(){
  print("Future Begin");

//Future 是一个抽象类，使用工厂构造函数创建Future对象，并传入一个无参函数
  var furture = Future(doMask);

  print("Future End");
}

//异步执行任务并返回结果
testFuture02(){
  print("begin");
  var future = Future(doMask).then((value) {
    print("异步任务执行完成！=== $value");
  });
  print("end");
}


//异步执行任务抛出异常
testFuture03(){
  print("begin");
  var future = Future(doMaskThrowError).then((value) {
    print("异步任务执行完成！=== $value");
  }).catchError((error){
    print("error==== $error");
  });
  print("end");
}

/*
await  async 使用
*/


//async await结合使用，函数返回Future
Future<String> testAwaitAndAsync() async{
  var future = await Future(doMask);

//最后返回值会被包装到Future中
  return "AwaitAndAsync";
}



/*
异步执行任务
*/

doMask(){
    for (int i = 0;i < 20;i++) {
      print("$i");
    }
    return "返回参数";
}

doMaskThrowError(){
    for (int i = 0;i < 20;i++) {
      print("$i");
    }
    throw Exception('异步任务，抛出异常');
}


doMaskWithParameter(int num){
    for (int i = 0;i < num;i++) {
      print("$i");
    }

    return "返回参数";
}