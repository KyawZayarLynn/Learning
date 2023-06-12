import 'dart:async';

void main() async {
  print('First');
  await Future.delayed(Duration(seconds: 3)); //async/await/Future
  Future(() => print('Second'));
  print('Third');
}
