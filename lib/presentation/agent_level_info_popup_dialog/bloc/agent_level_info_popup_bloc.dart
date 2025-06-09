import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/agent_level_info_popup_model.dart';
part 'agent_level_info_popup_event.dart';
part 'agent_level_info_popup_state.dart';

/// A bloc that manages the state of a AgentLevelInfoPopup according to the event that is dispatched to it.
class AgentLevelInfoPopupBloc
    extends Bloc<AgentLevelInfoPopupEvent, AgentLevelInfoPopupState> {
  AgentLevelInfoPopupBloc(AgentLevelInfoPopupState initialState)
    : super(initialState) {
    on<AgentLevelInfoPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AgentLevelInfoPopupInitialEvent event,
    Emitter<AgentLevelInfoPopupState> emit,
  ) async {}
}
