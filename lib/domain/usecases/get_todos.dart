import 'package:flutter_todo/domain/model/todos.dart';

abstract class GetTodosUseCase {
  Future<Todos> execute();
}
