import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/todo_controller.dart';

class AddTodoView extends StatelessWidget {
  final TodoController toDoController = Get.find();
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add ToDo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: 'ToDo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (textController.text.isNotEmpty) {
                  toDoController.addTodo(textController.text);
                  Get.back();
                }
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
