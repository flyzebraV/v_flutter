import 'dart:io';

void readStringFromFile() {
  File("/Users/Test/1.txt").readAsString().then((content) {
    //任务执行完成会进入这里，能够获得返回的执行结果。
    print(content);
  }).whenComplete(() {
    //当任务停止时，最后会执行这里。
    print("杨过是武林高手");
  }).catchError((e, s) {
    //如果文件地址时会发生异常，这时候可以利用catchError捕获此异常。
    print(s);
  });
}

main() {
  // async1();
  notAsync();
}

void async1() {
  print('--------start---------');
  Future(() {
    for (int i = 0; i < 3; i++) {
      // 模拟耗时操作
      print('异步 模拟耗时操作=$i');
    }
  });
  print('--------end-----------');
}

void notAsync() {
  print('--------start---------');
  for (int i = 0; i < 3; i++) {
    // 模拟耗时操作
    print('同步 模拟耗时操作=$i');
  }
  print('--------end-----------');
}
