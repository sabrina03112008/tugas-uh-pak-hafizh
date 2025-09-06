import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _items = [
    Todo(id: '1', title: 'This is an example of task #1', isDone: true),
    Todo(id: '2', title: 'This is an example of task #2'),
    Todo(id: '3', title: 'This is an example of task #3', isDone: true),
    Todo(id: '4', title: 'This is an example of task #4'),
    Todo(id: '5', title: 'This is an example of task #5'),
  ];

  List<Todo> get items => List.unmodifiable(_items);

  void addTodo(String title) {
    if (title.trim().isEmpty) return;
    _items.add(Todo(id: DateTime.now().toString(), title: title));
    notifyListeners();
  }

  void toggleTodo(String id) {
    final index = _items.indexWhere((t) => t.id == id);
    if (index != -1) {
      _items[index].isDone = !_items[index].isDone;
      notifyListeners();
    }
  }

  void removeTodo(String id) {
    _items.removeWhere((t) => t.id == id);
    notifyListeners();
  }

  int get remainingCount => _items.where((t) => !t.isDone).length;
}
