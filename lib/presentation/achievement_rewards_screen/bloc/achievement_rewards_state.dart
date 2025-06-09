part of 'achievement_rewards_bloc.dart';

/// Represents the state of AchievementRewards in the application.

// ignore_for_file: must_be_immutable
class AchievementRewardsState extends Equatable {
  AchievementRewardsState({this.achievementRewardsModelObj});

  AchievementRewardsModel? achievementRewardsModelObj;

  @override
  List<Object?> get props => [achievementRewardsModelObj];
  AchievementRewardsState copyWith({
    AchievementRewardsModel? achievementRewardsModelObj,
  }) {
    return AchievementRewardsState(
      achievementRewardsModelObj:
          achievementRewardsModelObj ?? this.achievementRewardsModelObj,
    );
  }
}
