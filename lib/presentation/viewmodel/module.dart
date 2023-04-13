import 'package:flutter_todo/domain/model/todos.dart';
import 'package:flutter_todo/domain/usecases/module.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'module.g.dart';

@riverpod
Future<Todos> todosList(TodosListRef ref) async {
  final usecase = ref.watch(getTodosProvider);
  return await usecase.execute();
}
