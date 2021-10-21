import 'package:dio/dio.dart';
import 'package:oktoast/oktoast.dart';

sync() {
  print('1');
  print('2');
  print('3');
}

async() {
  print('1');
  Future(() => print('2'));
  print('3');
}

void main() {
  sync();
  async();

}


