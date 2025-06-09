part of 'agent_leaderboard_detail_view_bloc.dart';

/// Represents the state of AgentLeaderboardDetailView in the application.

// ignore_for_file: must_be_immutable
class AgentLeaderboardDetailViewState extends Equatable {
  AgentLeaderboardDetailViewState({this.agentLeaderboardDetailViewModelObj});

  AgentLeaderboardDetailViewModel? agentLeaderboardDetailViewModelObj;

  @override
  List<Object?> get props => [agentLeaderboardDetailViewModelObj];
  AgentLeaderboardDetailViewState copyWith({
    AgentLeaderboardDetailViewModel? agentLeaderboardDetailViewModelObj,
  }) {
    return AgentLeaderboardDetailViewState(
      agentLeaderboardDetailViewModelObj:
          agentLeaderboardDetailViewModelObj ??
          this.agentLeaderboardDetailViewModelObj,
    );
  }
}
