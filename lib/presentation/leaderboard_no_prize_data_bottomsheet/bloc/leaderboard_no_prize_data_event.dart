part of 'leaderboard_no_prize_data_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LeaderboardNoPrizeData widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LeaderboardNoPrizeDataEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LeaderboardNoPrizeData widget is first created.
class LeaderboardNoPrizeDataInitialEvent extends LeaderboardNoPrizeDataEvent {
  @override
  List<Object?> get props => [];
}
