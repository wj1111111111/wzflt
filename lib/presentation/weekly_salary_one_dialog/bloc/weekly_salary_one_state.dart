part of 'weekly_salary_one_bloc.dart';

/// Represents the state of WeeklySalaryOne in the application.

// ignore_for_file: must_be_immutable
class WeeklySalaryOneState extends Equatable {
  WeeklySalaryOneState({this.weeklySalaryOneModelObj});

  WeeklySalaryOneModel? weeklySalaryOneModelObj;

  @override
  List<Object?> get props => [weeklySalaryOneModelObj];
  WeeklySalaryOneState copyWith({
    WeeklySalaryOneModel? weeklySalaryOneModelObj,
  }) {
    return WeeklySalaryOneState(
      weeklySalaryOneModelObj:
          weeklySalaryOneModelObj ?? this.weeklySalaryOneModelObj,
    );
  }
}
