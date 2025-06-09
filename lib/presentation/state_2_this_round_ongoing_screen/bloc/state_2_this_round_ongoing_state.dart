part of 'state_2_this_round_ongoing_bloc.dart';

/// Represents the state of State2ThisRoundOngoing in the application.

// ignore_for_file: must_be_immutable
class State2ThisRoundOngoingState extends Equatable {
  State2ThisRoundOngoingState({this.state2ThisRoundOngoingModelObj});

  State2ThisRoundOngoingModel? state2ThisRoundOngoingModelObj;

  @override
  List<Object?> get props => [state2ThisRoundOngoingModelObj];
  State2ThisRoundOngoingState copyWith({
    State2ThisRoundOngoingModel? state2ThisRoundOngoingModelObj,
  }) {
    return State2ThisRoundOngoingState(
      state2ThisRoundOngoingModelObj:
          state2ThisRoundOngoingModelObj ?? this.state2ThisRoundOngoingModelObj,
    );
  }
}
