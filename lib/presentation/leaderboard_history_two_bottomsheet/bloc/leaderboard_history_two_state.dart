part of 'leaderboard_history_two_bloc.dart';

/// Represents the state of LeaderboardHistoryTwo in the application.

// ignore_for_file: must_be_immutable
class LeaderboardHistoryTwoState extends Equatable {
  LeaderboardHistoryTwoState({this.leaderboardHistoryTwoModelObj});

  LeaderboardHistoryTwoModel? leaderboardHistoryTwoModelObj;

  @override
  List<Object?> get props => [leaderboardHistoryTwoModelObj];
  LeaderboardHistoryTwoState copyWith({
    LeaderboardHistoryTwoModel? leaderboardHistoryTwoModelObj,
  }) {
    return LeaderboardHistoryTwoState(
      leaderboardHistoryTwoModelObj:
          leaderboardHistoryTwoModelObj ?? this.leaderboardHistoryTwoModelObj,
    );
  }
}
