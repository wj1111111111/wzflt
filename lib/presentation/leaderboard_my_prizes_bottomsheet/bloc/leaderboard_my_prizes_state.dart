part of 'leaderboard_my_prizes_bloc.dart';

/// Represents the state of LeaderboardMyPrizes in the application.

// ignore_for_file: must_be_immutable
class LeaderboardMyPrizesState extends Equatable {
  LeaderboardMyPrizesState({this.leaderboardMyPrizesModelObj});

  LeaderboardMyPrizesModel? leaderboardMyPrizesModelObj;

  @override
  List<Object?> get props => [leaderboardMyPrizesModelObj];
  LeaderboardMyPrizesState copyWith({
    LeaderboardMyPrizesModel? leaderboardMyPrizesModelObj,
  }) {
    return LeaderboardMyPrizesState(
      leaderboardMyPrizesModelObj:
          leaderboardMyPrizesModelObj ?? this.leaderboardMyPrizesModelObj,
    );
  }
}
