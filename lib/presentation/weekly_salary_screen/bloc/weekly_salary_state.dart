part of 'weekly_salary_bloc.dart';

/// Represents the state of WeeklySalary in the application.

// ignore_for_file: must_be_immutable
class WeeklySalaryState extends Equatable {
  WeeklySalaryState({this.weeklySalaryModelObj});

  WeeklySalaryModel? weeklySalaryModelObj;

  @override
  List<Object?> get props => [weeklySalaryModelObj];
  WeeklySalaryState copyWith({WeeklySalaryModel? weeklySalaryModelObj}) {
    return WeeklySalaryState(
      weeklySalaryModelObj: weeklySalaryModelObj ?? this.weeklySalaryModelObj,
    );
  }
}
