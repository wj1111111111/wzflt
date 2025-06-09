part of 'state_1_prize_not_claimed_this_bloc.dart';

/// Represents the state of State1PrizeNotClaimedThis in the application.

// ignore_for_file: must_be_immutable
class State1PrizeNotClaimedThisState extends Equatable {
  State1PrizeNotClaimedThisState({this.state1PrizeNotClaimedThisModelObj});

  State1PrizeNotClaimedThisModel? state1PrizeNotClaimedThisModelObj;

  @override
  List<Object?> get props => [state1PrizeNotClaimedThisModelObj];
  State1PrizeNotClaimedThisState copyWith({
    State1PrizeNotClaimedThisModel? state1PrizeNotClaimedThisModelObj,
  }) {
    return State1PrizeNotClaimedThisState(
      state1PrizeNotClaimedThisModelObj:
          state1PrizeNotClaimedThisModelObj ??
          this.state1PrizeNotClaimedThisModelObj,
    );
  }
}
