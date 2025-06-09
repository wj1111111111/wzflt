part of 'weekly_salary_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WeeklySalary widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WeeklySalaryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WeeklySalary widget is first created.
class WeeklySalaryInitialEvent extends WeeklySalaryEvent {
  @override
  List<Object?> get props => [];
}
