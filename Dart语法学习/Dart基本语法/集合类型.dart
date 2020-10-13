main(List<String> args) {
  /*
  List  
  Set 
  Map

  增加，删除操作都跟Objective-C,Java,Python差不多
  */
  //List为有序列表,可以有重复的值
  List list1 = [1,2,3,4,5];
  List list2 = ["1","2","3","4","5","1"];
  var list3 = ["1","2","3","4","5"];
  print('list1 type ${list1.runtimeType}');
  print('list3 type ${list3.runtimeType}');

  //Set为无序列表，不可以有重复的值 List可以转Set,Set转List
  Set s = {'1','2','3'};
  var ss = {'1','2','3'};

  //Map 为字典类型，键值对
  Map m = {'name':'Felix','age':13};
  var m2 = {'name':'Felix1','age':15};



}