import 'dart:core';

class PersonA {}

void main() {
  testVar();
  testObject();
  testDynamic();
  objectVsDynamic();
  testFinal();
  // testConst();
}

void testVar() {
  print('---------testVar start---------');

  /// var：如果没有初始值，可以变成任何类型
  // var dog;
  // dog = "旺财";
  // dog = true;// 不报错
  // dog = 0.111;// 不报错
  // dog = [1, 2, 3];// 不报错
  // dog = {"key": "value"};// 不报错
  // dog = 666;// 不报错
  // print('$dog'); // 输出：666

// var：如果有初始值，类型不可变
//   var dog="旺财";
//   dog = true;//编译报错（编译报错指的是编译器进行语法检查不通过，也就是违背了当前语言的语法）
//   dog = 0.111;//编译报错
//   dog = [1, 2, 3];//编译报错
//   dog = {"key": "value"};//编译报错
//   dog = 666;//编译报错
//   print('$dog');

  print('---------testVar end-----------');
}

void testObject() {
  print('---------testObject start---------');
  // 动态任意类型，编译阶段检查类型
  // Object age = 19;
  // print(age.runtimeType); // 打印：int
  // age = '你好';
  // print(age.runtimeType); // 打印：String
  // print('$age'); // 打印：你好
  print('---------testObject end-----------');
}

void testDynamic() {
  print('---------testDynamic start---------');
  // 动态任意类型，编译阶段不检查类型
  // dynamic age = 19;
  // print(age.runtimeType); // 打印：int
  // age = '你好';
  // print(age.runtimeType); // 打印：String
  // print('$age'); // 打印：你好
  // // age.haha66666(); //编译不报错，运行报错 Class 'String' has no instance method 'haha66666'.
  // print(age.contains("你好"));//打印：true

  print('---------testDynamic end-----------');
}

void objectVsDynamic() {
  print('---------objectVsDynamic start---------');
  // dynamic a = "a";
  // Object b = "b";
  //
  // //编译器不会警告，但是运行报错
  // print(a.jjjjjjjjjjjjj);
  //
  // // 会警告
  // print(b.jjjjjjjjjjjjj);

  print('---------objectVsDynamic end-----------');
}

void testFinal() {
  print('---------testFinal start---------');
  // 修饰的变量，初始化后不可改变；
  final String name = "张三疯";
  // name = "李四";//编译报错

  final nickName = "张三"; //String 可省略不写
  print('$nickName');

  final int age;
  age = 16;
  // age=59;//编译报错

  print('---------testFinal end-----------');
}

void testConst() {
  print('---------testConst start---------');
  // 使用关键字 const 修饰变量表示该变量为 编译时常量
  const apple = "苹果";
  // apple = "梨子"; //编译报错
  print('$apple');

  final timeFinal = DateTime.now();
  // const timeConst = DateTime.now();//编译报错

  print('---------testConst end-----------');
}
