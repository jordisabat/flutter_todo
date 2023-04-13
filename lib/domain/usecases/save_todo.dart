import 'package:flutter_todo/domain/model/todo.dart';

abstract class SaveTodoUseCase {
  Future<void> execute(Todo todo);
}
