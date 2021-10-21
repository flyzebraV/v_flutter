void main() {
  List<int> ageList = [3, 2, 1];

  // list forEach遍历
  ageList.forEach((element) {
    print('$element');
  });

  // 下标遍历
  for (int i = 0; i < ageList.length; i++) {
    print('下标遍历 i=$i');
  }
  // 关键字 in 遍历
  for (var a in ageList) {
    print('关键字 in $a');
  }


  //排序
  ageList.sort((a, b) => a.compareTo(b));

  print('\n排序后\n');
  ageList.forEach((element) => print('$element'));


}
