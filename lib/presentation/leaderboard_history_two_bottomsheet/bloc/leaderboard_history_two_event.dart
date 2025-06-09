part of 'leaderboard_history_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LeaderboardHistoryTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LeaderboardHistoryTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LeaderboardHistoryTwo widget is first created.
class LeaderboardHistoryTwoInitialEvent extends LeaderboardHistoryTwoEvent {
  @override
  List<Object?> get props => [];
}
