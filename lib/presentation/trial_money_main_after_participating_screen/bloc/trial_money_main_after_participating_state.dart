part of 'trial_money_main_after_participating_bloc.dart';

/// Represents the state of TrialMoneyMainAfterParticipating in the application.

// ignore_for_file: must_be_immutable
class TrialMoneyMainAfterParticipatingState extends Equatable {
  TrialMoneyMainAfterParticipatingState({
    this.trialMoneyMainAfterParticipatingModelObj,
  });

  TrialMoneyMainAfterParticipatingModel?
  trialMoneyMainAfterParticipatingModelObj;

  @override
  List<Object?> get props => [trialMoneyMainAfterParticipatingModelObj];
  TrialMoneyMainAfterParticipatingState copyWith({
    TrialMoneyMainAfterParticipatingModel?
    trialMoneyMainAfterParticipatingModelObj,
  }) {
    return TrialMoneyMainAfterParticipatingState(
      trialMoneyMainAfterParticipatingModelObj:
          trialMoneyMainAfterParticipatingModelObj ??
          this.trialMoneyMainAfterParticipatingModelObj,
    );
  }
}
