part of 'leaderboard_no_prize_data_bloc.dart';

/// Represents the state of LeaderboardNoPrizeData in the application.

// ignore_for_file: must_be_immutable
class LeaderboardNoPrizeDataState extends Equatable {
  LeaderboardNoPrizeDataState({this.leaderboardNoPrizeDataModelObj});

  LeaderboardNoPrizeDataModel? leaderboardNoPrizeDataModelObj;

  @override
  List<Object?> get props => [leaderboardNoPrizeDataModelObj];
  LeaderboardNoPrizeDataState copyWith({
    LeaderboardNoPrizeDataModel? leaderboardNoPrizeDataModelObj,
  }) {
    return LeaderboardNoPrizeDataState(
      leaderboardNoPrizeDataModelObj:
          leaderboardNoPrizeDataModelObj ?? this.leaderboardNoPrizeDataModelObj,
    );
  }
}
