part of 'agent_leaderboard_history_bloc.dart';

/// Represents the state of AgentLeaderboardHistory in the application.

// ignore_for_file: must_be_immutable
class AgentLeaderboardHistoryState extends Equatable {
  AgentLeaderboardHistoryState({this.agentLeaderboardHistoryModelObj});

  AgentLeaderboardHistoryModel? agentLeaderboardHistoryModelObj;

  @override
  List<Object?> get props => [agentLeaderboardHistoryModelObj];
  AgentLeaderboardHistoryState copyWith({
    AgentLeaderboardHistoryModel? agentLeaderboardHistoryModelObj,
  }) {
    return AgentLeaderboardHistoryState(
      agentLeaderboardHistoryModelObj:
          agentLeaderboardHistoryModelObj ??
          this.agentLeaderboardHistoryModelObj,
    );
  }
}
