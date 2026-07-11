mixin Loggable {
  void log(String msg) {
    DateTime now = DateTime.now();
    print('[$now] $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
    log('Push: Push $item to stack (Size: ${_items.length})');
  }

  T? pop() {
    if (_items.isEmpty) {
      log('Pop: stack is empty, cannot pop');
      return null;
    }
    T item = _items.removeLast();
    log('Pop: Pop $item from stack (Size: ${_items.length})');
    return item;
  }

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;
}

void main() {
  Stack<int> numberStack = Stack<int>();

  numberStack.push(10);
  numberStack.push(20);
  numberStack.push(30);

  numberStack.pop();

  print('\n- Test Stack<String> -\n');

  Stack<String> nameStack = Stack<String>();
  nameStack.push('Harry');
  nameStack.push('Hermione');
  nameStack.pop();
  nameStack.pop();
  nameStack.pop(); 
}