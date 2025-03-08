import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/todo_controller.dart';

class HomeScreen extends StatelessWidget {
  final TodoController toDoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToDo List')),
      body: Obx(() {
        return ListView.builder(
          itemCount: toDoController.todos.length,
          itemBuilder: (context, index) {
            final todo = toDoController.todos[index];
            return ListTile(
              title: Text(
                todo.title,
                style: TextStyle(
                  decoration: todo.isDone ? TextDecoration.lineThrough : null,
                ),
              ),
              leading: Checkbox(
                value: todo.isDone,
                onChanged: (value) => toDoController.toggleTodoStatus(index),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => toDoController.removeTodo(index),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
