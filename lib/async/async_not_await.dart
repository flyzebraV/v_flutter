main() {
  print('main--标记A1');
  requestData();
  print('main--标记A2');
}

requestData() async {
  print('requestData--标记B1');
  await  Future.delayed(
    const Duration(seconds: 2),
    () => print('requestData--响应请求结果xxx'),
  );
  print('requestData--标记B2');
}
// main--标记A1
// requestData--标记B1
// requestData--标记B2
// main--标记A2
// requestData--响应请求结果xxx

// main--标记A1
// requestData--标记B1
// main--标记A2
// requestData--响应请求结果xxx
// requestData--标记B2