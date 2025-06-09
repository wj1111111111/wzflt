part of 'leaderboard_rules_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LeaderboardRules widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LeaderboardRulesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LeaderboardRules widget is first created.
class LeaderboardRulesInitialEvent extends LeaderboardRulesEvent {
  @override
  List<Object?> get props => [];
}
