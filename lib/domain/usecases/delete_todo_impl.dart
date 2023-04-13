import 'package:flutter_todo/domain/model/todo.dart';
import 'package:flutter_todo/domain/repository/todos.dart';
import 'package:flutter_todo/domain/usecases/delete_todo.dart';

class DeleteTodoUseCaseImpl implements DeleteTodoUseCase {
  DeleteTodoUseCaseImpl(this.repository);
  final TodosRepository repository;

  @override
  Future<void> execute(Todo todo) async {
    return await repository.deleteTodo(todo);
  }
}
