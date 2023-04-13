import 'package:flutter_todo/data/repository/module.dart';
import 'package:flutter_todo/domain/model/todos.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'module.g.dart';

@riverpod
Future<Todos> getTodos(GetTodosRef ref) async {
  final todos = ref.watch(todosProvider);
  return await todos.loadTodos();
}
