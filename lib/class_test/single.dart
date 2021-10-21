class Person {
  String? name;
  int? age;

  factory Person(String name, int age) {
    return Person._();
  }

  Person._();
}

void main(){
  var singleton1 = Singleton();
  var singleton2 = Singleton();
  print(singleton1==singleton2);// true
}
class Singleton {
  // 3.工厂构造方法
  factory Singleton() => _singleton;

  // 2.静态实例，调用命名构造方法返回实例
  static final Singleton _singleton = Singleton._internal();

  // 1.创建命名构造方法
  Singleton._internal();
}


class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}
