import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/presentation/viewmodel/module.dart';
import 'package:go_router/go_router.dart';

class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getTodos = ref.watch(todosListProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Todos'),
      ),
      body: getTodos.map(
        loading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error) => Center(child: Text(error.stackTrace.toString())),
        data: (todos) => ListView.builder(
          itemCount: todos.value.values.length,
          itemBuilder: (context, index) {
            final todo = todos.value.values[index];
            return ListTile(
              title: Text(todo.title),
              subtitle: Text(todo.completed.toString()),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go('/todos/new');
        },
        tooltip: 'Add todo',
        label: const Text('Add todo'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
