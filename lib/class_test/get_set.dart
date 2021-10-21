class Person {
  String? name;

  int? age;

  int? sex;

  Person(this.name, this.age, this.sex);

  ///自定义 get 方法，写法一
  String get info => "姓名：$name 年龄$age 性别$getSexString";

  ///自定义 get 方法，写法二
  get getSexString {
    return sex == 0 ? "男" : "女";
  }

  ///自定义 set 方法，写法一
  set setName(String name) => this.name;

  ///自定义 set 方法，写法二
  set setNameAndSex(String name) {
    this.name = name;
    this.sex = 1;
  }
}

void main() {
  print(Person("戴维", 13, 0).info); // 姓名：戴维 年龄13 性别男
  print(Person("lucy", 20, 1).info); // 姓名：lucy 年龄20 性别女

  var person = Person("戴维", 13, 0);
  print(person.info); //姓名：戴维 年龄13 性别男
  person.setNameAndSex = "Lucy";
  print(person.info); //姓名：Lucy 年龄13 性别女
}
