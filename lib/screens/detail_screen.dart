import 'package:flutter/material.dart';
import '../models/todo.dart';

class DetailScreen extends StatelessWidget {
  final Todo todo;

  const DetailScreen({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Detail', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple, // 🔹 warna AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              todo.isDone ? "Status: Completed ✅" : "Status: Pending ⏳",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: todo.isDone ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              '"Doing what you love is the cornerstone of having abundance in your life." - Wayne Dyer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
