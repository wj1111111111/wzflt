part of 'agent_leaderboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AgentLeaderboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AgentLeaderboardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AgentLeaderboard widget is first created.
class AgentLeaderboardInitialEvent extends AgentLeaderboardEvent {
  @override
  List<Object?> get props => [];
}
