import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/achievement_rewards_rules_model.dart';
part 'achievement_rewards_rules_event.dart';
part 'achievement_rewards_rules_state.dart';

/// A bloc that manages the state of a AchievementRewardsRules according to the event that is dispatched to it.
class AchievementRewardsRulesBloc
    extends Bloc<AchievementRewardsRulesEvent, AchievementRewardsRulesState> {
  AchievementRewardsRulesBloc(AchievementRewardsRulesState initialState)
    : super(initialState) {
    on<AchievementRewardsRulesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AchievementRewardsRulesInitialEvent event,
    Emitter<AchievementRewardsRulesState> emit,
  ) async {}
}
