import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/todo.dart';
import '../providers/todo_provider.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: todo.isDone ? Colors.green.shade50 : Colors.red.shade50, // 🔹 warna card
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/detail',
            arguments: todo,
          );
        },
        child: ListTile(
          leading: Checkbox(
            value: todo.isDone,
            activeColor: Colors.deepPurple, // 🔹 warna checkbox
            onChanged: (_) {
              Provider.of<TodoProvider>(context, listen: false)
                  .toggleTodo(todo.id);
            },
          ),
          title: Text(
            todo.title,
            style: TextStyle(
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
              color: todo.isDone ? Colors.grey : Colors.black,
              fontWeight: todo.isDone ? FontWeight.w400 : FontWeight.w600,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.close, color: Colors.red),
            onPressed: () {
              Provider.of<TodoProvider>(context, listen: false)
                  .removeTodo(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
