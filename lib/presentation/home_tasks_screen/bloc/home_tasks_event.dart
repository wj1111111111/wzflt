part of 'home_tasks_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeTasks widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeTasksEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeTasks widget is first created.
class HomeTasksInitialEvent extends HomeTasksEvent {
  @override
  List<Object?> get props => [];
}
