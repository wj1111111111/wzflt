import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/trial_money_reward_popup_model.dart';
part 'trial_money_reward_popup_event.dart';
part 'trial_money_reward_popup_state.dart';

/// A bloc that manages the state of a TrialMoneyRewardPopup according to the event that is dispatched to it.
class TrialMoneyRewardPopupBloc
    extends Bloc<TrialMoneyRewardPopupEvent, TrialMoneyRewardPopupState> {
  TrialMoneyRewardPopupBloc(TrialMoneyRewardPopupState initialState)
    : super(initialState) {
    on<TrialMoneyRewardPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrialMoneyRewardPopupInitialEvent event,
    Emitter<TrialMoneyRewardPopupState> emit,
  ) async {}
}
