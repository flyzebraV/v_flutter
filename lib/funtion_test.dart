void forEachCallBack(var item) {
  print('$item');
}

void main() {
  var list = [1, 2, 3];
  list.forEach(forEachCallBack);
  // (element) { } 这个就是匿名函数
  list.forEach((element) {
    print('$element');
  });
  list.forEach((element) => print('$element'));

  var func = normalFunction("item");

  upperStr('hello');

  requestSave("http://www.baidu.com", isShowLoading: true);

  nameFunction(b: "hello");
  locationFunction("hello"); // a=hello,b=null
  locationFunction("hello", "world"); // a=hello,b=world

  defaultValueFunction(param: "ok");

  anon("hello anon !");
}

// var upperStr = (msg) {
//   print(msg.toUpperCase());
// };

var upperStr = (msg) => print(msg.toUpperCase());

/// url 必要参数
///  {bool? isLoading, String? param} 可选参数
void requestSave(String url, {bool? isShowLoading, String? param}) {}

/// 可选命名参数
void nameFunction({String? a, required String? b}) {}

/// 可选位置参数
void locationFunction([String? a, String? b]) {
  print('a=$a,b=$b');
}

/// 参数默认值  ，required标识 不能设置参数默认值
void defaultValueFunction(
    {bool? isAlive = true, bool? isGoto: false, required String? param}) {}

/// 普通函数
void normalFunction(String item) {
  print(item);
}

/// 匿名函数
var anon = (item) {
  print(item);
};
var anonScore = (item) {
  print(item);
  return 100;
};
