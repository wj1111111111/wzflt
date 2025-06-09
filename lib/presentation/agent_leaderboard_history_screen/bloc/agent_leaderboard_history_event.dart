part of 'agent_leaderboard_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AgentLeaderboardHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AgentLeaderboardHistoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AgentLeaderboardHistory widget is first created.
class AgentLeaderboardHistoryInitialEvent extends AgentLeaderboardHistoryEvent {
  @override
  List<Object?> get props => [];
}
