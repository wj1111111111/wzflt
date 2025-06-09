part of 'weekly_wage_claimed_bloc.dart';

/// Represents the state of WeeklyWageClaimed in the application.

// ignore_for_file: must_be_immutable
class WeeklyWageClaimedState extends Equatable {
  WeeklyWageClaimedState({this.weeklyWageClaimedModelObj});

  WeeklyWageClaimedModel? weeklyWageClaimedModelObj;

  @override
  List<Object?> get props => [weeklyWageClaimedModelObj];
  WeeklyWageClaimedState copyWith({
    WeeklyWageClaimedModel? weeklyWageClaimedModelObj,
  }) {
    return WeeklyWageClaimedState(
      weeklyWageClaimedModelObj:
          weeklyWageClaimedModelObj ?? this.weeklyWageClaimedModelObj,
    );
  }
}
