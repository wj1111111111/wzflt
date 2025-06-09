part of 'monthly_salary_bloc.dart';

/// Represents the state of MonthlySalary in the application.

// ignore_for_file: must_be_immutable
class MonthlySalaryState extends Equatable {
  MonthlySalaryState({this.monthlySalaryModelObj});

  MonthlySalaryModel? monthlySalaryModelObj;

  @override
  List<Object?> get props => [monthlySalaryModelObj];
  MonthlySalaryState copyWith({MonthlySalaryModel? monthlySalaryModelObj}) {
    return MonthlySalaryState(
      monthlySalaryModelObj:
          monthlySalaryModelObj ?? this.monthlySalaryModelObj,
    );
  }
}
