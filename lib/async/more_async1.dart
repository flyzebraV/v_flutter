main() {
  getUserToken();
}

getUserToken() async {
  try {
    String userInfo = await login();
    print('$userInfo');
    // 获取userInfo执行其他操作
  } catch (e) {
    print(e);
  }
}

/// 登录
Future<String> login() async {
  var locationDbUserInfo = await getLocationDbUserInfo();
  return Future.delayed(
    const Duration(seconds: 2),
    () => '返回登录结果$locationDbUserInfo',
  );
}

/// 获取本地文件保存的账号信息
Future<String> getLocationDbUserInfo() {
  return Future.delayed(
    const Duration(seconds: 1),
    () => 'userId=abc',
  );
}
