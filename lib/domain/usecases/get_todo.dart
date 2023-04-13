import 'package:flutter_todo/domain/model/todo.dart';

abstract class GetTodoUseCase {
  Future<Todo?> execute(String id);
}
