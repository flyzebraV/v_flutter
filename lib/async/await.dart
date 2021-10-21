Future<void> main() async {
  print('请求获取用户订单');
  print(await createOrderMessage());
}

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return '你的订单信息: $order';
}

Future<String> fetchUserOrder() =>
    // 模拟耗时任务
    Future.delayed(
      const Duration(seconds: 2),
      () => 'XXX信息',
    );
