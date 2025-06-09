part of 'leaderboard_history_one_bloc.dart';

/// Represents the state of LeaderboardHistoryOne in the application.

// ignore_for_file: must_be_immutable
class LeaderboardHistoryOneState extends Equatable {
  LeaderboardHistoryOneState({this.leaderboardHistoryOneModelObj});

  LeaderboardHistoryOneModel? leaderboardHistoryOneModelObj;

  @override
  List<Object?> get props => [leaderboardHistoryOneModelObj];
  LeaderboardHistoryOneState copyWith({
    LeaderboardHistoryOneModel? leaderboardHistoryOneModelObj,
  }) {
    return LeaderboardHistoryOneState(
      leaderboardHistoryOneModelObj:
          leaderboardHistoryOneModelObj ?? this.leaderboardHistoryOneModelObj,
    );
  }
}
