part of 'agent_leaderboard_bloc.dart';

/// Represents the state of AgentLeaderboard in the application.

// ignore_for_file: must_be_immutable
class AgentLeaderboardState extends Equatable {
  AgentLeaderboardState({this.agentTabModelObj, this.agentLeaderboardModelObj});

  AgentLeaderboardModel? agentLeaderboardModelObj;

  AgentTabModel? agentTabModelObj;

  @override
  List<Object?> get props => [agentTabModelObj, agentLeaderboardModelObj];
  AgentLeaderboardState copyWith({
    AgentTabModel? agentTabModelObj,
    AgentLeaderboardModel? agentLeaderboardModelObj,
  }) {
    return AgentLeaderboardState(
      agentTabModelObj: agentTabModelObj ?? this.agentTabModelObj,
      agentLeaderboardModelObj:
          agentLeaderboardModelObj ?? this.agentLeaderboardModelObj,
    );
  }
}
