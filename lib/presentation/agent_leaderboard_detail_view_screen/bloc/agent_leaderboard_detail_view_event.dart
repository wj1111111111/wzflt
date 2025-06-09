part of 'agent_leaderboard_detail_view_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AgentLeaderboardDetailView widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AgentLeaderboardDetailViewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AgentLeaderboardDetailView widget is first created.
class AgentLeaderboardDetailViewInitialEvent
    extends AgentLeaderboardDetailViewEvent {
  @override
  List<Object?> get props => [];
}
