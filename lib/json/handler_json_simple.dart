import 'dart:convert';
/// 简单json处理
void main() {
  // parseJsonToMap();
  // jsonToObject();
  objectToJson();
  // handlerJson();
}

String jsonStr = '''
  {
  "name": "John Smith",
  "email": "john@example.com"
  }
  ''';

/// 把json转为 map
void parseJsonToMap() {
  Map<String, dynamic> user = jsonDecode(jsonStr);
  Map<String, dynamic> user2 = json
      .decode(jsonStr); //jsonDecode 等于 json.decode，jsonDecode内部调用了json.decode
  print('parseJsonToMap--name= ${user['name']}!');
  print('parseJsonToMap--email= ${user2['email']}');
}

void jsonToObject() {
  Map<String, dynamic> userMap = jsonDecode(jsonStr);
  var user = User.fromJson(userMap);
  print('jsonToObject--${user.name}');
}

void objectToJson() {
  var user = User("QQ", "123@qq.com");
  String jsonEncode2 = jsonEncode(user); //jsonEncode = json.encode
  print('objectToJson--$jsonEncode2'); // 打印 objectToJson--{"name":"QQ","age":"18"}
}

class User {
  User(this.name, this.email); //普通有参构造方法
  /// 命名构造方法,名字随意通常命名为fromJson，把map key对应value值赋值到当前成员属性
  User.fromJson(Map<String, dynamic> map)
      : name = map['name'],
        email = map['email']; //构造方法后面接冒号可写多行表达式

  /// 指导对象编码成json,方法名称toJson是固定的，但json内容可以自定义
  Map<String, dynamic> toJson() => {
        'name': name,
        'age': "18",
        // 'email': email,
      };
  String name;
  String email;
}
