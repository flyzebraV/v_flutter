class MyClass{
  beer() => print("小熊");
}

void main(){
  dynamic a = new MyClass();
  Object b = new MyClass();
  a.beer(); // prints without error
  // b.beer(); // error comes saying myFunction isn't defined for b

}