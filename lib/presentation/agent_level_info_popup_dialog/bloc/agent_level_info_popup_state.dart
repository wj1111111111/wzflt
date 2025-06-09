part of 'agent_level_info_popup_bloc.dart';

/// Represents the state of AgentLevelInfoPopup in the application.

// ignore_for_file: must_be_immutable
class AgentLevelInfoPopupState extends Equatable {
  AgentLevelInfoPopupState({this.agentLevelInfoPopupModelObj});

  AgentLevelInfoPopupModel? agentLevelInfoPopupModelObj;

  @override
  List<Object?> get props => [agentLevelInfoPopupModelObj];
  AgentLevelInfoPopupState copyWith({
    AgentLevelInfoPopupModel? agentLevelInfoPopupModelObj,
  }) {
    return AgentLevelInfoPopupState(
      agentLevelInfoPopupModelObj:
          agentLevelInfoPopupModelObj ?? this.agentLevelInfoPopupModelObj,
    );
  }
}
