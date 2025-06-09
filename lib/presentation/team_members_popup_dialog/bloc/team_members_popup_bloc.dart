import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/team_members_popup_model.dart';
part 'team_members_popup_event.dart';
part 'team_members_popup_state.dart';

/// A bloc that manages the state of a TeamMembersPopup according to the event that is dispatched to it.
class TeamMembersPopupBloc
    extends Bloc<TeamMembersPopupEvent, TeamMembersPopupState> {
  TeamMembersPopupBloc(TeamMembersPopupState initialState)
    : super(initialState) {
    on<TeamMembersPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TeamMembersPopupInitialEvent event,
    Emitter<TeamMembersPopupState> emit,
  ) async {}
}
