class CounterService {
  var _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    if (_counter > 0) _counter--;
  }
}
