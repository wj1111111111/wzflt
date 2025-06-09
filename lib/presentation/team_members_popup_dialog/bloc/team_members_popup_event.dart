part of 'team_members_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TeamMembersPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TeamMembersPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TeamMembersPopup widget is first created.
class TeamMembersPopupInitialEvent extends TeamMembersPopupEvent {
  @override
  List<Object?> get props => [];
}
