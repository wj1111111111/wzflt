part of 'home_tasks_default_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeTasksDefaultPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeTasksDefaultPageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeTasksDefaultPage widget is first created.
class HomeTasksDefaultPageInitialEvent extends HomeTasksDefaultPageEvent {
  @override
  List<Object?> get props => [];
}
