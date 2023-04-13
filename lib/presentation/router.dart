import 'package:flutter_todo/presentation/view/todo_list.dart';
import 'package:flutter_todo/presentation/view/todo_new.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/todos',
  routes: [
    GoRoute(
      path: '/todos',
      builder: (context, state) => const TodoList(),
      routes: [
        GoRoute(
          path: 'new',
          builder: (context, state) => const TodoNew(),
        ),
      ],
    ),
  ],
);
