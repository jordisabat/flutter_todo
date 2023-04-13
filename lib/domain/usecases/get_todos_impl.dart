import 'package:flutter_todo/domain/model/todos.dart';
import 'package:flutter_todo/domain/repository/todos.dart';
import 'package:flutter_todo/domain/usecases/get_todos.dart';

class GetTodosUseCaseImpl implements GetTodosUseCase {
  GetTodosUseCaseImpl(this.repository);
  final TodosRepository repository;

  @override
  Future<Todos> execute() async {
    return await repository.loadTodos();
  }
}
