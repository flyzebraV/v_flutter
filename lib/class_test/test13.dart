mixin Swim {
  void swim() => print('Swim会游泳');
}

mixin Ride {
  void ride() => print('会骑单车');
  void swim() => print('Ride会游泳');
}

class Jack with Swim, Ride {
  void skill() {
    print('Jack --------');
    swim();
    ride();
  }
}

class Lucy with  Swim, Ride {
  void skill() {
    print('Lucy --------');
    swim();
  }
}

main() {
  Jack().skill();
  Lucy().skill();
}
