part of 'monthly_salary_one_bloc.dart';

/// Represents the state of MonthlySalaryOne in the application.

// ignore_for_file: must_be_immutable
class MonthlySalaryOneState extends Equatable {
  MonthlySalaryOneState({this.monthlySalaryOneModelObj});

  MonthlySalaryOneModel? monthlySalaryOneModelObj;

  @override
  List<Object?> get props => [monthlySalaryOneModelObj];
  MonthlySalaryOneState copyWith({
    MonthlySalaryOneModel? monthlySalaryOneModelObj,
  }) {
    return MonthlySalaryOneState(
      monthlySalaryOneModelObj:
          monthlySalaryOneModelObj ?? this.monthlySalaryOneModelObj,
    );
  }
}
