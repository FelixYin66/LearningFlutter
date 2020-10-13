/*
函数的参数可以分成两类: 必须参数和可选参数
前面使用的参数都是必须参数.

*/
main(List<String> args) {
  // 命名可选参数
  function1('Felix');
  function1('Felix',age:3);
  function1('Felix',height:3.5);

  //位置可选参数
  function2('Felix');
  function2('Felix',3);
  function2('Felix',3,3.5);

  //命名可选参数,参数默认值
  function3('Felix');
  function3('Felix',age:3);
  function3('Felix',age:3,height:1.55);

  //位置可选参数,参数默认值
  function4('Felix');
  function4('Felix',1);
  function4('Felix',2,1.55);

  //Dart中函数可以作为参数
  Function f = (String name){
    print('name = $name');
  };
  function5(3, 5, f);
}

//命名可选参数 {param1,param2,...}
void function1(String name,{int age,double height}){
  print("name = ${name} age = ${age} height = ${height}");
  print("name = $name age = $age height = $height"); //可以省略{}
}

//位置可选参数[param1,param2,...]
void function2(String name,[int age,double height]){
  print("name = ${name} age = ${age} height = ${height}");
  print("name = $name age = $age height = $height"); //可以省略{}
}

//命名可选参数，参数默认值
void function3(String name,{int age = 18,double height = 1.88}){
  print('name = $name age = $age height = $height');
}

//位置可选参数，参数默认值
void function4(String name,[int age = 18,double height = 1.88]){
  print('name = $name age = $age height = $height');
}

//Dart中函数可以作为参数
void function5 (int a,int b,Function function){
  print('a = $a b = $b');
  function('Felix');
}

//函数参数中带有返回值函数参数
void function6 (int a,int b,int cal(int a,int b)){
  print('a = $a b = $b');
  int result = cal(a,b);
  print("$result");
}

//函数参数中带有返回值函数参数，可以将带有返回值参数的函数精简后提高阅读性(使用函数签名)
typedef cal = int Function(int a,int b);
void function7 (int a,int b,cal){
  print('a = $a b = $b');
  int result = cal(a,b);
  print("$result");
}