part of 'trial_money_reward_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrialMoneyRewardPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TrialMoneyRewardPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TrialMoneyRewardPopup widget is first created.
class TrialMoneyRewardPopupInitialEvent extends TrialMoneyRewardPopupEvent {
  @override
  List<Object?> get props => [];
}
