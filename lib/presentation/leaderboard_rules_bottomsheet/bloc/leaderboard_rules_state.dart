part of 'leaderboard_rules_bloc.dart';

/// Represents the state of LeaderboardRules in the application.

// ignore_for_file: must_be_immutable
class LeaderboardRulesState extends Equatable {
  LeaderboardRulesState({this.leaderboardRulesModelObj});

  LeaderboardRulesModel? leaderboardRulesModelObj;

  @override
  List<Object?> get props => [leaderboardRulesModelObj];
  LeaderboardRulesState copyWith({
    LeaderboardRulesModel? leaderboardRulesModelObj,
  }) {
    return LeaderboardRulesState(
      leaderboardRulesModelObj:
          leaderboardRulesModelObj ?? this.leaderboardRulesModelObj,
    );
  }
}
