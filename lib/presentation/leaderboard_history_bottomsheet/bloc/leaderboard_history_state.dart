part of 'leaderboard_history_bloc.dart';

/// Represents the state of LeaderboardHistory in the application.

// ignore_for_file: must_be_immutable
class LeaderboardHistoryState extends Equatable {
  LeaderboardHistoryState({this.leaderboardHistoryModelObj});

  LeaderboardHistoryModel? leaderboardHistoryModelObj;

  @override
  List<Object?> get props => [leaderboardHistoryModelObj];
  LeaderboardHistoryState copyWith({
    LeaderboardHistoryModel? leaderboardHistoryModelObj,
  }) {
    return LeaderboardHistoryState(
      leaderboardHistoryModelObj:
          leaderboardHistoryModelObj ?? this.leaderboardHistoryModelObj,
    );
  }
}
