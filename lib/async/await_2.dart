void main() {
  print('请求获取用户订单');
  createOrderMessage();
}

Future<void> createOrderMessage() async {
  var order = await fetchUserOrder();
  print('你的订单信息: $order');

}



Future<String> fetchUserOrder() =>
    // 模拟耗时任务
    Future.delayed(
      const Duration(seconds: 2),
      () => 'XXX信息',
    );
