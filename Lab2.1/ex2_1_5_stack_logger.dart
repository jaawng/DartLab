mixin Loggable {
  void log(String msg) {
    var time = DateTime.now().toIso8601String();
    print('[$time] $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
    log('push: $item, stack size: ${_items.length}');
  }

  T? pop() {
    if (_items.isEmpty) {
      log('pop: stack is empty');
      return null;
    }
    var item = _items.removeLast();
    log('pop: $item, stack size: ${_items.length}');
    return item;
  }

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;
}

void main() {
  var stack = Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop();
}
