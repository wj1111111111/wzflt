part of 'achievement_rewards_rules_bloc.dart';

/// Represents the state of AchievementRewardsRules in the application.

// ignore_for_file: must_be_immutable
class AchievementRewardsRulesState extends Equatable {
  AchievementRewardsRulesState({this.achievementRewardsRulesModelObj});

  AchievementRewardsRulesModel? achievementRewardsRulesModelObj;

  @override
  List<Object?> get props => [achievementRewardsRulesModelObj];
  AchievementRewardsRulesState copyWith({
    AchievementRewardsRulesModel? achievementRewardsRulesModelObj,
  }) {
    return AchievementRewardsRulesState(
      achievementRewardsRulesModelObj:
          achievementRewardsRulesModelObj ??
          this.achievementRewardsRulesModelObj,
    );
  }
}
