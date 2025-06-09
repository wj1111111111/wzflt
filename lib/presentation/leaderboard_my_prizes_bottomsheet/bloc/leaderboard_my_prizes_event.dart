part of 'leaderboard_my_prizes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LeaderboardMyPrizes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LeaderboardMyPrizesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LeaderboardMyPrizes widget is first created.
class LeaderboardMyPrizesInitialEvent extends LeaderboardMyPrizesEvent {
  @override
  List<Object?> get props => [];
}
