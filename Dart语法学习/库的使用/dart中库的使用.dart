import 'dart:math';
//导入utils中的dart
import 'utils/stringconvert.dart' show convert;
import 'utils/stringconvert2.dart' hide dateStringConvert2;
import 'package:http/http.dart' as http; //使用第三方库

/*
1.as给库取别名
2.默认情况下，导入一个库时，导入这个库中所有的内容：show ：执行要导入的内容 hide:隐藏要导入的某个内容，导入其他内容
*/
main(List<String> args)  async{
  print('aaaa');

  test();

  //只能使用convert 不能使用convert1，convert2
  convert();

  //只能使用dateStringConvert ,不能使用dateStringConvert2
  dateStringConvert();



  //使用第三方库 await 必须在async函数中使用 （由于是异步操作）

  var url = 'https://www.baidu.com';

  //post请求
  var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  //read读取操作
  print(await http.read('https://www.baidu.com'));

}


test(){
  final num1 = 90;
  final num2 = 100;
  var minNum = min(num1, num2);
}