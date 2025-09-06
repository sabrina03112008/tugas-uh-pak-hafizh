import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';
import '../widgets/todo_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    final text = _controller.text;
    if (text.trim().isEmpty) return;
    Provider.of<TodoProvider>(context, listen: false).addTodo(text);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context).items;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your To Do',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple, // 🔹 Warna AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/detail');
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.deepPurple.shade50, // 🔹 background row input
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Add new task",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.add_circle, color: Colors.deepPurple),
                  onPressed: _addTodo,
                  tooltip: "Add task",
                )
              ],
            ),
          ),
          Expanded(
            child: todos.isEmpty
                ? const Center(
                    child: Text(
                      "No tasks yet, add some!",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  )
                : ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (ctx, i) => TodoItem(todo: todos[i]),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple, // 🔹 warna FAB
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: _addTodo,
      ),
    );
  }
}
