import 'dart:core';

void main() {
  /// 算术运算符
  // arithmetic();

  /// 类型判断、转换
  // isAndas();

  /// 三目和??可 简化 if-else 语句
  // ifElse();

  /// 级联操作符 实现对同一个对像进行一系列的操作
  // doubleDot();

  /// 空安全
  nullSave();
}


void arithmetic() {
  var a = 6;
  var b = 2;
  print('${a % b}');
  print('${a / b}');
  print('${a ~/ b}'); // 除后取整数

  List<String> array = ["a", "b"];
  array.forEach((element) => print('$element'));

  // ??= 值为null的变量值
  var color;
  color = "蓝色";
  var finalColor = color ??= "红色"; // ??= 等于号可省略
  print(finalColor);
}

void isAndas() {
  var a = 44;
  // is 判断类型
  if (a is int) {
    print('${a} is int');
  }
  if (a is! String) {
    print('${a} is! String');
  }
  // as转换类型
  int qty = a as int;
  // String name = a as String;//运行时报错
}

void ifElse() {
  // 三目
  String compare = 2 > 7 ? "大于" : "小于";
  print('$compare');

  // ??
  var age;
  var ageValue = age ?? "0岁";
  print(ageValue);
}

void doubleDot() {
  Person person = Person();
  person
    ..name = "小花"
    ..age = 25;
  print('${person.name}  ${person.age}');
}

class Person {
  String name = "小明";
  int age = 11;
}

void nullSave() {
  String? name;//可空类型
  name="ss";
  print(name?.length);
  // print(name.length);//编译不通过，不符合空安全
}
