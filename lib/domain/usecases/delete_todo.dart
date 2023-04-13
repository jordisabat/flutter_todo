import 'package:flutter_todo/domain/model/todo.dart';

abstract class DeleteTodoUseCase {
  Future<void> execute(Todo todo);
}
