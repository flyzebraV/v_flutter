abstract class Father {
  void walk(); //抽象方法没有方法体
  void parent() {
    //普通方法
  }
}

class Son extends Father {
  @override
  void walk() {}
}

void main() {
  Son();
  // Father 构造方法 Jack
  // Son 构造方法
}
