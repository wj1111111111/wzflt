part of 'team_members_popup_bloc.dart';

/// Represents the state of TeamMembersPopup in the application.

// ignore_for_file: must_be_immutable
class TeamMembersPopupState extends Equatable {
  TeamMembersPopupState({this.teamMembersPopupModelObj});

  TeamMembersPopupModel? teamMembersPopupModelObj;

  @override
  List<Object?> get props => [teamMembersPopupModelObj];
  TeamMembersPopupState copyWith({
    TeamMembersPopupModel? teamMembersPopupModelObj,
  }) {
    return TeamMembersPopupState(
      teamMembersPopupModelObj:
          teamMembersPopupModelObj ?? this.teamMembersPopupModelObj,
    );
  }
}
