
import '../../main.dart';

void main() {
  List<int> ageList = [3, 2, 1];
  // 替换元素
  ageList[1] = 5;
  // 添加一个元素
  ageList.add(4);
  // 添加集合
  ageList.addAll([100, 200, 300]);

  ageList.forEach((element) => print('$element'));
  worklist.toString();
}
