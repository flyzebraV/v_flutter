class Water {
  Water() {
    print('无参数构造函数，可省略');
  }
}

void main() {
  // var person1 = Person.newInstance1(); //打印 newInstance1
  // var person2 = Person.newInstance2("a", "b"); //打印 newInstance2 a b
  // var person = Person.newInstance5("nickName", "height", "score");

  // var user1 =const User("lucy",20);
  // var user2 =const User("lucy",20);
  // print(user1==user2); //true
}

class Person {
  /// 变量
  String? name;

  /// 变量
  int? age;

  /// 构造方法
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // Person.newInstance1() {
  //   print('newInstance1');
  // }
  //
  // Person.newInstance2(String a, String b) {
  //   print('newInstance2 $a $b');
  // }

  Person.newInstance3(String nickName) : this(nickName, 0);

  // 与newInstance3 相同，参数类型可省略
  Person.newInstance4(nickName) : this(nickName, 20);

  Person.newInstance5(nickName, height, score) : this(nickName, height);

//不支持重载
// Person(String name){
//   this.name = name;
// }

// 简化语法糖
// Person(this.name);

  /// 方法
// void todoSomething() {
//   var who = this.name;
//   print('$who todoSomething');
// }
}

/// 函数
// void todoSomething() {
//   print('todoSomething');
// }

class User {
  final String name; // 必须声明final
  final int age;
  final String  nickName="gg";

  const User(this.name, this.age); //常量构造函数
}
