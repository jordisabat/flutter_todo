import 'package:flutter_todo/domain/model/todo.dart';
import 'package:flutter_todo/domain/repository/todos.dart';
import 'package:flutter_todo/domain/usecases/get_todo.dart';

class GetTodoUseCaseImpl implements GetTodoUseCase {
  GetTodoUseCaseImpl(this.repository);
  final TodosRepository repository;

  @override
  Future<Todo?> execute(String id) async {
    return await repository.getTodoById(id);
  }
}
