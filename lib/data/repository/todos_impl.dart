import 'dart:convert';

import 'package:collection/collection.dart';

import '../../domain/model/todo.dart';
import '../../domain/model/todos.dart';
import '../../domain/repository/todos.dart';
import '../source/files.dart';

class TodosRepositoryImpl extends TodosRepository {
  TodosRepositoryImpl(this.files);
  final Files files;
  late final String path = "todos.json";

  @override
  Future<Todos> getTodos() async {
    final content = await files.read(path);
    if (content == null) return const Todos(todos: []);
    return Todos.fromJson(jsonDecode(content));
  }

  @override
  Future<Todo?> getTodoById(String id) async {
    final todos = await getTodos();
    return todos.values.firstWhereOrNull((todo) => todo.id == id);
  }

  @override
  Future<void> saveTodo(Todo todo) async {
    final todos = await getTodos();
    final newTodos = todos.values.where((t) => t.id != todo.id).toList();
    newTodos.add(todo);
    await files.write(path, jsonEncode(Todos(values: newTodos).toJson()));
  }

  @override
  Future<void> deleteTodo(Todo todo) async {
    final todos = await getTodos();
    final newTodos = todos.values.where((t) => t.id != todo.id).toList();
    await files.write(path, jsonEncode(Todos(values: newTodos).toJson()));
  }

  @override
  Future<void> deleteAllTodos() async {
    await files.delete(path);
  }
}
