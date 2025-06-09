import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/achievement_rewards_claim_popup_model.dart';
part 'achievement_rewards_claim_popup_event.dart';
part 'achievement_rewards_claim_popup_state.dart';

/// A bloc that manages the state of a AchievementRewardsClaimPopup according to the event that is dispatched to it.
class AchievementRewardsClaimPopupBloc
    extends
        Bloc<
          AchievementRewardsClaimPopupEvent,
          AchievementRewardsClaimPopupState
        > {
  AchievementRewardsClaimPopupBloc(
    AchievementRewardsClaimPopupState initialState,
  ) : super(initialState) {
    on<AchievementRewardsClaimPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AchievementRewardsClaimPopupInitialEvent event,
    Emitter<AchievementRewardsClaimPopupState> emit,
  ) async {}
}
