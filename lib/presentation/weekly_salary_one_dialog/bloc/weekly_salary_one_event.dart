part of 'weekly_salary_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WeeklySalaryOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WeeklySalaryOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WeeklySalaryOne widget is first created.
class WeeklySalaryOneInitialEvent extends WeeklySalaryOneEvent {
  @override
  List<Object?> get props => [];
}
