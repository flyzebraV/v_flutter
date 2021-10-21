void main() {
  /// dart的num类型有量两种分别是int 和double两种，这两种都是num的子类。
  // num num_qty = 1;
  // print(num_qty.runtimeType); // 打印 int
  //
  // num num_pi = 3.14;
  // print(num_pi.runtimeType); // 打印 double
  var scoreMap = {"lucy": 60, "lili": 70, "john": 100};
  var list = scoreMap.entries
      .map((entry) => "${entry.key}的分数是${entry.value}")
      .toList();
  print(list); // 打印 [lucy的分数是60, lili的分数是70, john的分数是100]
  ///num int double相互类型转换
  // num num_c = 33;
  // print(num_c.runtimeType);//打印 int
  // num_c = 33.6;
  // print(num_c.runtimeType);//打印 double
  // num_c = 77;
  // print(num_c.runtimeType);//打印 int
  // print('$num_c'); // 打印 77

  // double double_a=10.5;
  // int int_b=20;
  // int_b=double_a;//编译报错
  // double_a=int_b;//编译报错
  ///String
  // String apple = "apple";
  // apple = '苹果';
  // print('$apple.length'); // 打印 苹果.length
  // print('${apple.length}'); // 打印 2

  /// List
  // var list = []; // 创建无元素、长度为0 的数组；list != null;自动推导类型 List<dynamic>
  // var listObject = <String>[]; //指定元素为String类型
  // var listA = [1, 2, 3]; // 自动推导类型 List<int>
  // var listB = ["a", "b", "c"]; // 自动推导类型 List<String>
  //
  // var growableList1 = List.empty(growable: false);
  // var filledList = List.filled(3, 0);
  // var generateList = List.generate(3, (i) => i);
  // List fromList = new List.from([1, "2", 3, 4]);

  /// List 添加数据
  // var fruitList = <String>[];
  // fruitList.add("apple");
  // fruitList.addAll(["banana", "orange"]);
  // print(fruitList); //打印 [apple, banana, orange]

  var fruitList2 = <String>[];
  // fruitList2.insert(0, "APPLE");
  // fruitList2.insertAll(1, ["BANANA", "ORANGE"]);
  // print(fruitList2);// 打印 [APPLE, BANANA, ORANGE]

  /// List 修改数据
  // var stringList = <String>["a", "b", "c"];
  // stringList[0]="d";
  // print(stringList);// 打印 [d, b, c]

  // var removeList = <String>["apple", "banana", "orange"];
  // removeList.remove("apple");
  // print(removeList); // 打印[banana, orange]
  //
  // removeList.removeAt(1);
  // print(removeList); // 打印[banana]
  //
  // removeList.removeWhere((element) => element.contains("banana"));
  // print(removeList);// 打印[]

  /// List 遍历
  // var stringList = <String>["a", "b", "c"];
  //
  // // forEach
  // stringList.forEach((element) {
  //   print('$element');
  // });
  //
  // for (var value in stringList) {
  //   print('$value');
  // }
  //
  // for (int i = 0; i < stringList.length; i++) {
  //   print(stringList[i]);
  // }

  /// List 其他
  // var joinList = <String>["a", "b", "c"];
  // var join = joinList.join(";");
  // print(join); // 打印 a;b;c

  /// toMap
  // var toMapList = <String>["a", "b", "c"];
  // Map<int, String> asMap = toMapList.asMap();
  // print(asMap); // 打印 {0: a, 1: b, 2: c}
  // toMapList.asMap().forEach((key, value) {});

  /// List toSet
  // var toSetList = <int>[0, 1, 0, 0, 0, 1, 1];
  // Set<int> setList = toSetList.toSet();
  // print(setList); // 打印 {0, 1}

  // var list = [1, 2, 3];
  // list.sort((a, b) => a < b ? 1 : -1);
  // print(list);// 打印 [3, 2, 1]

  /// Set
  // var set = <dynamic>{}; // 创建一个无元素 Set,并指定泛型为dynamic
  //
  // Set<String> stringSet = {"a", "b", "c"};
  // stringSet[1]; // 编译报错，Set不能依据下标获取索引值。

  // var intSet = {1, 2, 3,1,2};
  // print(intSet);// 打印 {1, 2, 3}

  /// Map
  // var map={};// 自动推导类型 Map<dynamic, dynamic>
  // var mapAny={"a":"apple","a":"banana",123:true};// 自动推导类型 Map<Object, Object>
  // print(mapAny);// {a: banana, 123: true}
  // var mapIntString = <int, String>{1: "a", 2: "b"}; //限定泛型

  // var map1 = Map(); //自动推导类型  Map<dynamic, dynamic>

  // var map = {};
  // map["key"] = "hello";
  // map["key"] = "world";
  // map[123] = 456;
  // print(map); // 打印 {key: world, 123: 456}

  // var map = {};
  // map.addAll({"a":"b"});

  // var mapIntString = <int, String>{1: "a", 2: "b"};
  // mapIntString.update(1, (value) => "c");
  // print(mapIntString);// 打印 {1: c, 2: b}
  // var mapIntString = <int, String>{1: "a", 2: "b"};
  // mapIntString.updateAll((key, value) =>  "value${key}");
  // print(mapIntString); // 打印 {1: value1, 2: value2}

  // var mapStringString = <String, String>{ "a": "apple", "c": "cat"};
  // mapStringString.removeWhere((key,value)=>key=='c');
  // print(mapStringString); // 打印 {a: apple}

  // var linkedMap = new LinkedHashMap();
  // linkedMap['111'] = 'Alice';
  // linkedMap['111'] = 'AKA';
  // linkedMap[null] = 'Bob';
  // print(linkedMap);// 打印 {111: AKA, null: Bob}

  // var hashMap = new  HashMap();
  // hashMap['111'] = 'Alice';
  // hashMap['111'] = 'AKA';
  // hashMap[null] = 'Bob';
  // print(hashMap);// 打印 {null: Bob, 111: AKA}

  var mapA = new Map();
  mapA['111'] = 'Alice';
  mapA['111'] = 'AKA';
  mapA[null] = 'Bob';
  print(mapA); // 打印 {null: Bob, 111: AKA}

/*
  double double_c = 2.6;
  int int_d = 3;

  num_a = int_d;
  // int_d=num_a;//报错

  /// String 使用单或双引号创建
  String fruit = "banana";
  fruit = 'apple';
  print("换行\n符: "); //转义
  print(r"换行\n符: "); //r不转义*/
}

