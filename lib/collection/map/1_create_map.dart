var aka = "hh";

void main() {
  // 任意类型
  var map = {"1": "a", "2": "b", 3: false};

  // 限定类型
  var stringMap = Map<String, String>();
  stringMap["key"] = "value";
  stringMap["a"] = "b";

  // 动态类型
  var dynamicMap = Map<dynamic, dynamic>();

  // 添加元素
  dynamicMap["a"] = 2;
  dynamicMap[2] = "cc";
  dynamicMap["c"] = false;

  // 常量 map
  var constMap = const {"1": "a", "2": "b", 3: false};

  var scoreMap = {"lucy": 60, "lili": 70, "john": 100};



  // 条件删除
  scoreMap.removeWhere((key, value) => value < 60);

  print("删除后");
  scoreMap.forEach((key, value) => print("key=$key,value=$value"));
}
