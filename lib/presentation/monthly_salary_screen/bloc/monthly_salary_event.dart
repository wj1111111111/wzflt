part of 'monthly_salary_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MonthlySalary widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MonthlySalaryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MonthlySalary widget is first created.
class MonthlySalaryInitialEvent extends MonthlySalaryEvent {
  @override
  List<Object?> get props => [];
}
