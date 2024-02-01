part of 'todo_bloc.dart';

sealed class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

final class TodoInitial extends TodoState {}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<Todo> todos;

  const TodoLoaded({this.todos = const <Todo>[]});

  @override
  List<Object> get props => [todos];
}

class TodoError extends TodoState {
  final String? errorMessage;

  const TodoError(this.errorMessage);
}
