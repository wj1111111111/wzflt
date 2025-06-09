part of 'team_members_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TeamMembers widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TeamMembersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TeamMembers widget is first created.
class TeamMembersInitialEvent extends TeamMembersEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends TeamMembersEvent {
  UpdateChipViewEvent({
    required this.index,
    required this.subIndex,
    this.isSelected,
  });

  int index;

  int subIndex;

  bool? isSelected;

  @override
  List<Object?> get props => [index, subIndex, isSelected];
}
