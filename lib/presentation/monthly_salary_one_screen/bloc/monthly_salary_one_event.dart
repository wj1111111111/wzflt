part of 'monthly_salary_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MonthlySalaryOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MonthlySalaryOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MonthlySalaryOne widget is first created.
class MonthlySalaryOneInitialEvent extends MonthlySalaryOneEvent {
  @override
  List<Object?> get props => [];
}
