void main() {
  Stream<int> numberStream = countNumbers(6);

  numberStream.listen((int number) {
    print('Received : $number');
  });
}

Stream<int> countNumbers(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}