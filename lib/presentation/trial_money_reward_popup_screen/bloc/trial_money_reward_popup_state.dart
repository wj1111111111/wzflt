part of 'trial_money_reward_popup_bloc.dart';

/// Represents the state of TrialMoneyRewardPopup in the application.

// ignore_for_file: must_be_immutable
class TrialMoneyRewardPopupState extends Equatable {
  TrialMoneyRewardPopupState({this.trialMoneyRewardPopupModelObj});

  TrialMoneyRewardPopupModel? trialMoneyRewardPopupModelObj;

  @override
  List<Object?> get props => [trialMoneyRewardPopupModelObj];
  TrialMoneyRewardPopupState copyWith({
    TrialMoneyRewardPopupModel? trialMoneyRewardPopupModelObj,
  }) {
    return TrialMoneyRewardPopupState(
      trialMoneyRewardPopupModelObj:
          trialMoneyRewardPopupModelObj ?? this.trialMoneyRewardPopupModelObj,
    );
  }
}
