import 'package:flutter/material.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/entity/todo.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/presentation/controller/todo_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoListScreen extends ConsumerWidget {
  TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoControllerProvider);
    print("終わったよ");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: todoList.when(
        data: (todolist) => ListView.builder(
          itemCount: todolist.length,
          itemBuilder: (context, index) {
            final todo = todolist[index];
            return ListTile(
              title: Text(todo.getTitle),
              subtitle: Text(todo.getDetail),
              trailing: Text(todo.getDeadline.toString()),
            );
          },
        ),
        error: (error, stack) => Text("$error"),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
