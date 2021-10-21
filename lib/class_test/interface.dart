class Animal {
  eat() {}
}

class Color {
  getColor() {}
}

class Dog implements Animal, Color {
  @override
  eat() {}

  @override
  getColor() {}
}

class Singleton {
  // 3.工厂构造方法
  factory Singleton() => _singleton;

  // 2.静态实例，调用命名构造方法返回实例
  static final Singleton _singleton = Singleton._internal();

  // 1.创建命名构造方法
  Singleton._internal();
}
void main(){
  var singleton = Singleton._internal();
  var singleton1 = Singleton();
  var singleton2 = Singleton();
  print(singleton1==singleton2);// true
}