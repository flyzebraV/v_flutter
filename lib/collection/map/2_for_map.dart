void main(){
  var scoreMap = {"lucy": 60, "lili": 70, "john": 100};

  // // forEach 遍历
  // scoreMap.forEach((key, value) => print("key=$key,value=$value"));
  //
  // // entries 遍历
  // for (MapEntry e in scoreMap.entries) {
  //   print('${e.key}');
  // }
  // scoreMap.entries.forEach((element) { });
  //
  // // 遍历key值
  // scoreMap.keys.forEach((element) {});
  // // 遍历value值
  // scoreMap.values.forEach((element) {});
  //
  // scoreMap.entries.forEach((element) { });

  var list = scoreMap.entries.map((entry) =>"${entry.key}的分数是${entry.value}").toList();
  print(list);// 打印 [lucy的分数是60, lili的分数是70, john的分数是100]
}