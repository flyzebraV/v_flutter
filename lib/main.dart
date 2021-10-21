import 'dart:async';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

final worklist = "new Queue()";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ),
        position: ToastPosition.bottom);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _pageIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20),child: Text('async、await↓↓↓'),),
              ElevatedButton(
                child: Text('通过async、await实现异步请求网络'),
                onPressed: () {
                  requestHttp();
                },
              ),
              ElevatedButton(
                child: Text('await 后面代码阻塞，直到处理完成再执行'),
                onPressed: () {
                  awaitRun();
                },
              ),
              ElevatedButton(
                child: Text('多个await 执行顺序'),
                onPressed: () {
                  moreAwait();
                },
              ),
              ElevatedButton(
                child: Text('async 使用Future API'),
                onPressed: () {
                  requestHttp()
                      .then((value) => print)
                      .whenComplete(() => showToast('请求完成'));
                },
              ),
              ElevatedButton(
                child: Text('Timer'),
                onPressed: () {
                  testTimer();
                },
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('Future API  ↓↓↓'),
              ),
              ElevatedButton(
                child: Text('Future 构造方法 Future(FutureOr<T> computation())'),
                onPressed: () {
                  newFutureByFutureOr();
                },
              ),
              ElevatedButton(
                child: Text('Future 异步执行顺序'),
                onPressed: () {
                  newFutureByFutureOr2();
                },
              ),
              ElevatedButton(
                child: Text('Future 构造方法 Future.delayed'),
                onPressed: () {
                  newFutureByDelayed();
                },
              ),
              ElevatedButton(
                child: Text('Future 构造方法 Future.error'),
                onPressed: () {
                  newFutureByError();
                },
              ),
              ElevatedButton(
                child: Text('Future 构造方法 Future.sync'),
                onPressed: () {
                  newFutureBySync();
                },
              ),
              ElevatedButton(
                child: Text('Future 构造方法 Future.microtask'),
                onPressed: () {
                  newFutureByMicrotask();
                },
              ),
              ElevatedButton(
                child: Text('Future 构造方法 Future.value'),
                onPressed: () {
                  newFutureByValue();
                },
              ),
              ElevatedButton(
                child: Text('Future 方法 then'),
                onPressed: () {
                  then();
                },
              ),
              ElevatedButton(
                child: Text('Future 方法 then 错误'),
                onPressed: () {
                  thenError();
                },
              ),
              ElevatedButton(
                child: Text('Future 方法 catchError'),
                onPressed: () {
                  catchError();
                },
              ),
              ElevatedButton(
                child: Text('Future 方法 catchError2'),
                onPressed: () {
                  catchError2();
                },
              ),
              ElevatedButton(
                child: Text('Future 方法 whenComplete'),
                onPressed: () {
                  whenComplete();
                },
              ),
              ElevatedButton(
                child: Text('Future 方法 timeout '),
                onPressed: () {
                  timeout();
                },
              ),
              ElevatedButton(
                child: Text('Future 方法 timeout2 '),
                onPressed: () {
                  timeout2();
                },
              ),
              ElevatedButton(
                child: Text('Future 静态方法 any '),
                onPressed: () {
                  any();
                },
              ),
              ElevatedButton(
                child: Text('Future 静态方法 any2 '),
                onPressed: () {
                  any2();
                },
              ),
              ElevatedButton(
                child: Text('Future 静态方法 wait '),
                onPressed: () {
                  wait();
                },
              ),
              ElevatedButton(
                child: Text('Future 静态方法 forEach '),
                onPressed: () {
                  forEach();
                },
              ),
              ElevatedButton(
                child: Text('Future 静态方法 doWhile '),
                onPressed: () {
                  doWhile();
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> requestHttp() async {
    try {
      var response = await Dio().get('http://www.baidu.com');
      showToast('响应状态码${response.statusCode}');
    } catch (e) {
      print(e);
    }
  }

  Future<void> awaitRun() async {
    try {
      print('请求前');
      var response = await Future.delayed(
        const Duration(seconds: 3),
        () => '响应结果',
      );
      print('请求后');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  Future<void> moreAwait() async {
    try {
      var response1 = await Dio().get('http://www.baidu.com');
      print('请求1 响应状态码${response1.statusCode}');
      var response2 = await Dio().get('http://www.weibo.com');
      print('请求2 响应状态码${response2.statusCode}');
    } catch (e) {
      print(e);
    }
  }

  void newFutureByFutureOr() {
    Future(() => "str"); // 返回类型 Future<String>
    Future(() => true); // 返回类型 Future<bool>
    Future(() {
      int a = 0;
      for (var i = 0; i < 100; i++) {
        a++;
      }
      return a;
    }); // 返回类型 Future<int>
    Future(() => Future.value(2.1)); // 返回类型 Future<double>
  }

  void newFutureByFutureOr2() {
    print('A');
    Future(() => print('B'));
    print('C');
  }

  FutureOr<int> calculate() {
    int a = 0;
    for (var i = 0; i < 100; i++) {
      a++;
    }
    return Future.value(a);
  }

  /// 传入自定义函数作为参数
  void customerFun(aaaa()) {
    Timer.run(() {
      try {
        aaaa();
      } catch (e) {
        print(e);
      }
    });
  }

  Future<dynamic> requestHttp2() async {
    try {
      var response = await Dio().get('http://www.yuque.com');

      return response;
    } catch (e) {
      print(e);
    }
  }

  void testTimer() {
    print('AAA');
    Timer.run(() {
      print("BBB"); // 在CCC执行后执行
    });
    print('CCCC');
  }

  // 返回T示例
  FutureOr<String> returnT() {
    // return 123;// 返回int编译报错,因为T指定为String
    return "dd";
  }

  // 返回Future<T>示例
  FutureOr<String> returnFutureT() {
    // return Future.value(true);// 返回bool类型编译报错
    return Future.value("str"); //返回类型 Future<String>
  }

  void newFutureByDelayed() {
    print('A');
    Future.delayed(Duration(seconds: 2), () => print('延迟2秒后执行'));
    print('B');
  }

  void newFutureByError() {
    print('A');
    Future.error(123);
    print('C');
  }

  void newFutureBySync() {
    print('A');
    Future.sync(() => print('B'));
    print('C');
  }

  void newFutureByMicrotask() {
    Future(() => print("default fauture"));
    Future.microtask(() => print("microtask future"));
  }

  void newFutureByValue() {
    print('A');
    Future.value('B').then((value) => print('$value'));
    print('C');
  }

  void then() {
    Future.value(1).then((value) {
      return Future.value(value + 2);
    }).then((value) {
      return Future.value(value + 3);
    }).then(print);
  }

  void thenError() {
    Future.value(1).then((value) {
      return Future.error("报错了");
    }).then((value) {
      return Future.value(value + 3);
    }, onError: (value) {
      print(value);
    });
  }

  void catchError() {
    Future(() {
      return "future value";
    }).then((value) {
      throw Exception("空指针");
    }, onError: (error) {
      print("then onError $error");
    }).catchError((error) {
      print("catchError $error");
    });
  }

  void catchError2() {
    Future(() {
      return throw Exception("空指针");
    }).then((value) {}, onError: (error) {
      print("then onError $error");
    }).catchError((error) {
      print("catchError $error");
    });
  }

  void whenComplete() {
    Future(() {
      return throw Exception("空指针");
    }).then((value) {}, onError: (error) {
      print("then onError $error");
    }).catchError((error) {
      print("catchError $error");
    }).whenComplete(() => print('whenComplete'));
  }

  void timeout() {
    Future.delayed(
      const Duration(seconds: 3),
      () => "请求中",
    ).timeout(Duration(seconds: 2)).catchError((error) {
      print("catchError ${error} ");
    });
  }

  void timeout2() {
    Future.delayed(
      const Duration(seconds: 3),
      () => "请求中",
    ).timeout(Duration(seconds: 2), onTimeout: () {
      print('onTimeout 执行');
      return "超时了啊";
    }).catchError((error) {
      print("catchError ${error} ");
    });
  }

  void any() {
    var future = Future(() => "a");
    var future2 = Future(() => "b");
    var future3 = Future(() => "c");
    Future.any([future, future2, future3]).then((value) => print('$value'));
  }

  void any2() {
    var future = Future(() => Future.error("error"));
    var future2 = Future(() => "b");
    var future3 = Future(() => "c");
    Future.any([future, future2, future3]).then((value) => print('$value'));
  }

  void wait() {
    print("${new DateTime.now().second}=start wait");
    var future = Future.delayed(Duration(seconds: 1), () => "a");
    var future2 = Future.delayed(Duration(seconds: 2), () => "b");
    var future3 = Future.delayed(Duration(seconds: 3), () => "c");
    Future.wait([future, future2, future3])
        .then((value) => print('${new DateTime.now().second}=end wait $value'));
  }

  void forEach() {
    Future.forEach([2, 2, 5], (int num) {
      return Future.delayed(Duration(seconds: num), () {
        print("${new DateTime.now().second}=$num");
      });
    });
  }

  void doWhile() {
    var random = new Random();
    var delay = 0;
    Future.doWhile(() {
      if (delay > 8) {
        print('大于8停止循环: $delay ');
        return false;
      }
      delay += random.nextInt(5) + 1;
      return new Future.delayed(new Duration(seconds: delay), () {
        print('当前 $delay ');
        return true;
      });
    });
  }
}
