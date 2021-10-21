void main() {
  print('开始请求');
  requestMessage();
}

Future<void> requestMessage() async {
  var order = await fetchUserOrder();
  print('你的订单信息: $order');
  var info = await fetchUserInfo();
  print('你的用户信息: $info');
}

Future<String> fetchUserOrder() =>
    // 模拟耗时任务
    Future.delayed(
      const Duration(seconds: 2),
      () => '返回订单信息',
    );

Future<String> fetchUserInfo() =>
    // 模拟耗时任务
    Future.delayed(
      const Duration(seconds: 3),
      () => '返回用户信息',
    );
