part of 'state_3_no_prize_won_this_round_bloc.dart';

/// Represents the state of State3NoPrizeWonThisRound in the application.

// ignore_for_file: must_be_immutable
class State3NoPrizeWonThisRoundState extends Equatable {
  State3NoPrizeWonThisRoundState({this.state3NoPrizeWonThisRoundModelObj});

  State3NoPrizeWonThisRoundModel? state3NoPrizeWonThisRoundModelObj;

  @override
  List<Object?> get props => [state3NoPrizeWonThisRoundModelObj];
  State3NoPrizeWonThisRoundState copyWith({
    State3NoPrizeWonThisRoundModel? state3NoPrizeWonThisRoundModelObj,
  }) {
    return State3NoPrizeWonThisRoundState(
      state3NoPrizeWonThisRoundModelObj:
          state3NoPrizeWonThisRoundModelObj ??
          this.state3NoPrizeWonThisRoundModelObj,
    );
  }
}
