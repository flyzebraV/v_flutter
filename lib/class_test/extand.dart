class Father {
  Father(String name) {
    print('Father 构造方法 $name');
  }
  void play() {


  }
}

class Son extends Father {

  Son() : super("Jack") {
    print('Son 构造方法');
  }
  @override
  void play() {
    // TODO: implement play
    super.play();
  }
}

void main() {
  Son();
  // Father 构造方法 Jack
  // Son 构造方法
}
