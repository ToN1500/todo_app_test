import 'package:get/get.dart';
import '../screens/todo/home_screen.dart';
import '../screens/todo/add_todo_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => HomeScreen()),
    GetPage(name: '/add', page: () => AddTodoScreen()),
  ];
}
