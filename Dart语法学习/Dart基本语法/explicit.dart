/*
变量声明及变量类型
*/
import 'dart:convert';

main(List<String> args) {
  /*
     明确申明：变量类型 变量名称 = 赋值;
     注意点：定义的变量可以修改值，但不能修改类型
  */
  
  String name = 'Felix';
  int age = 23;
  double height = 1.89;
  print("name = ${name} \nage = ${age} \nheight = ${height}");

  // 定义的变量可以修改值，但不能修改类型
  String content = 'Hello Dart';
  content = 'Hello World';
  // content = 11; //会出现错误提示 不能将一个int类型值赋值给String

  /*
   类型推导 var dynamic const final （变量名称 = 赋值）
  */
  // var使用 runtimeType 用于获取变量当前类型
  var name2 = 'Felix';
  name2 = 'Coder';
  // name2 = 12; 不能这么写  还没编译时已经知道类型错误

  // dynamic
  dynamic name3 = 'Felix';
  print("dynamic string == ${name3}");
  name3 = 18; //dynamic无法在运行前判断其类型，会带来潜在风险
  print("dynamic number == ${name3}");

  /*
  final const 使用 都用于定义常量，定义后值不可以改变
  final const区别：
  final 在赋值时，可以动态获取，编译之后可以赋值
  const 在赋值时，赋值内容必须是编译期间确定下来的值
  */
  final name4 = 'Felix';
  // name4 = 'Coder'; //final赋值之后不能再将变量赋值

  const age1 = 18;
  // age1 = 13;

  // final name5 = getName(); //不会报错
  // const name6 = getName();//会出现错误

  //布尔类型 true或false(Dart中不能判断非0即真，或非空即真)
  var isFlag = true;
  print('isFlag ${isFlag.runtimeType}');

  //String Dart中字符串为UTF-16编码单元的序列。可以使用单引号或双引号创建一个字符串,三引号可以创建多行字符串
  var s1 = "Felix";
  var s2 = 'Felix';
  var s3 = '''
            nihao
            niaho1
            你好
          ''';



}

String getName(){
  return 'Felix';
}

/*
类型定义

*/ 
class Person{
  const Person();
}