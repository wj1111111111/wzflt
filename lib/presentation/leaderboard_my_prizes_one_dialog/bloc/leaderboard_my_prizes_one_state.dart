part of 'leaderboard_my_prizes_one_bloc.dart';

/// Represents the state of LeaderboardMyPrizesOne in the application.

// ignore_for_file: must_be_immutable
class LeaderboardMyPrizesOneState extends Equatable {
  LeaderboardMyPrizesOneState({this.leaderboardMyPrizesOneModelObj});

  LeaderboardMyPrizesOneModel? leaderboardMyPrizesOneModelObj;

  @override
  List<Object?> get props => [leaderboardMyPrizesOneModelObj];
  LeaderboardMyPrizesOneState copyWith({
    LeaderboardMyPrizesOneModel? leaderboardMyPrizesOneModelObj,
  }) {
    return LeaderboardMyPrizesOneState(
      leaderboardMyPrizesOneModelObj:
          leaderboardMyPrizesOneModelObj ?? this.leaderboardMyPrizesOneModelObj,
    );
  }
}
