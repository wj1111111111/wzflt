part of 'agent_level_info_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AgentLevelInfoPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AgentLevelInfoPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AgentLevelInfoPopup widget is first created.
class AgentLevelInfoPopupInitialEvent extends AgentLevelInfoPopupEvent {
  @override
  List<Object?> get props => [];
}
