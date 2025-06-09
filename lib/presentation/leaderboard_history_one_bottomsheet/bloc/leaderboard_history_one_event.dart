part of 'leaderboard_history_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LeaderboardHistoryOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LeaderboardHistoryOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LeaderboardHistoryOne widget is first created.
class LeaderboardHistoryOneInitialEvent extends LeaderboardHistoryOneEvent {
  @override
  List<Object?> get props => [];
}
