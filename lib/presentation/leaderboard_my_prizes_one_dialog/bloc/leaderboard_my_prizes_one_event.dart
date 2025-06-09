part of 'leaderboard_my_prizes_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LeaderboardMyPrizesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LeaderboardMyPrizesOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LeaderboardMyPrizesOne widget is first created.
class LeaderboardMyPrizesOneInitialEvent extends LeaderboardMyPrizesOneEvent {
  @override
  List<Object?> get props => [];
}
