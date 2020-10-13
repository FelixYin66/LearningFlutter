main(List<String> args) {
  //??=表示 当变量name值为null时，将Yin值赋值给变量name,如果不为空时不用重新赋值
  var name = "Felix";
  name ??= "Yin";
  print("name $name");

  //??表示 name2有值时，将值赋值给temp变量，当没值时将值Yin赋值给变量temp 
  var name2 = "Felix";
  var temp = name2 ?? "Yin";
  print("name2 $name2");
}