import 'package:flutter_todo/domain/model/todo.dart';
import 'package:flutter_todo/domain/repository/todos.dart';
import 'package:flutter_todo/domain/usecases/save_todo.dart';

class SaveTodoUseCaseImpl implements SaveTodoUseCase {
  SaveTodoUseCaseImpl(this.repository);
  final TodosRepository repository;

  @override
  Future<void> execute(Todo todo) async {
    return await repository.saveTodo(todo);
  }
}
