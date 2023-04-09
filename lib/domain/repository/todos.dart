import '../model/todo.dart';

abstract class TodosRepository {
  Future<List<Todo>> getTodos();

  Future<void> saveTodo(Todo todo);

  Future<void> deleteTodo(Todo todo);

  Future<Todo?> getTodo(String id);

  Future<void> deleteAllTodos();
}
