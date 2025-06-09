part of 'weekly_rebate_eligible_bloc.dart';

/// Represents the state of WeeklyRebateEligible in the application.

// ignore_for_file: must_be_immutable
class WeeklyRebateEligibleState extends Equatable {
  WeeklyRebateEligibleState({this.weeklyRebateEligibleModelObj});

  WeeklyRebateEligibleModel? weeklyRebateEligibleModelObj;

  @override
  List<Object?> get props => [weeklyRebateEligibleModelObj];
  WeeklyRebateEligibleState copyWith({
    WeeklyRebateEligibleModel? weeklyRebateEligibleModelObj,
  }) {
    return WeeklyRebateEligibleState(
      weeklyRebateEligibleModelObj:
          weeklyRebateEligibleModelObj ?? this.weeklyRebateEligibleModelObj,
    );
  }
}
