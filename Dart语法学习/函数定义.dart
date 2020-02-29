/*
Dart是一种真正的面向对象语言，所以即使函数也是对象，所以也有类型（Function）

函数定义格式：
1.返回值类型 函数名称(参数列表){
  函数体
  return 返回值;
}

  int sum(num num1,num num2){
    return (num1+num2);
  }

2.Effective Dart建议对公共的API, 使用类型注解, 但是如果我们省略掉了类型, 依然是可以正常工作的
  int sum(num1,num2){
    return (num1+num2);
  }

3.如果函数中只有一个表达式, 那么可以使用箭头语法(arrow syntax)
  int sum(num1,num2)=>num1+num2;
*/

int sum(num num1,num num2){
  return (num1+num2);
}


//函数签名

main(List<String> args) {
  
}