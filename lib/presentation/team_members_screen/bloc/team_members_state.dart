part of 'team_members_bloc.dart';

/// Represents the state of TeamMembers in the application.

// ignore_for_file: must_be_immutable
class TeamMembersState extends Equatable {
  TeamMembersState({
    this.dateRangeController,
    this.selectedDropDownValue,
    this.teamTabModelObj,
    this.teamMembersModelObj,
  });

  TextEditingController? dateRangeController;

  SelectionPopupModel? selectedDropDownValue;

  TeamMembersModel? teamMembersModelObj;

  TeamTabModel? teamTabModelObj;

  @override
  List<Object?> get props => [
    dateRangeController,
    selectedDropDownValue,
    teamTabModelObj,
    teamMembersModelObj,
  ];
  TeamMembersState copyWith({
    TextEditingController? dateRangeController,
    SelectionPopupModel? selectedDropDownValue,
    TeamTabModel? teamTabModelObj,
    TeamMembersModel? teamMembersModelObj,
  }) {
    return TeamMembersState(
      dateRangeController: dateRangeController ?? this.dateRangeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      teamTabModelObj: teamTabModelObj ?? this.teamTabModelObj,
      teamMembersModelObj: teamMembersModelObj ?? this.teamMembersModelObj,
    );
  }
}
