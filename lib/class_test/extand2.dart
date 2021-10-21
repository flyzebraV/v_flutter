class Father {
  Father() {
    print('Father 构造方法');
  }
}

class Son extends Father {
  Son() {
    print('Son 命名构造方法');
  }
}

void main() {
  Son();
  // Father 命名构造方法
  // Son 命名构造方法
}
