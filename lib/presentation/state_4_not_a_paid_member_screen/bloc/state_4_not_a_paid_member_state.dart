part of 'state_4_not_a_paid_member_bloc.dart';

/// Represents the state of State4NotAPaidMember in the application.

// ignore_for_file: must_be_immutable
class State4NotAPaidMemberState extends Equatable {
  State4NotAPaidMemberState({this.state4NotAPaidMemberModelObj});

  State4NotAPaidMemberModel? state4NotAPaidMemberModelObj;

  @override
  List<Object?> get props => [state4NotAPaidMemberModelObj];
  State4NotAPaidMemberState copyWith({
    State4NotAPaidMemberModel? state4NotAPaidMemberModelObj,
  }) {
    return State4NotAPaidMemberState(
      state4NotAPaidMemberModelObj:
          state4NotAPaidMemberModelObj ?? this.state4NotAPaidMemberModelObj,
    );
  }
}
