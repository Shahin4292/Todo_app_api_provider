import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_apps/src/view/todo_create.dart';
import 'package:todo_apps/src/view/todo_list.dart';
import 'package:todo_apps/src/viewmodel/todo_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //ChangeNotifierProvider<TodoViewModel>(create: (_) => TodoViewModel())
        ChangeNotifierProvider(create: (context) => TodoViewModel())
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TodoList(),
      ),
    );
  }
}
