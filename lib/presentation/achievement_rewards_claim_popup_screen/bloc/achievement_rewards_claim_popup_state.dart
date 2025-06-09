part of 'achievement_rewards_claim_popup_bloc.dart';

/// Represents the state of AchievementRewardsClaimPopup in the application.

// ignore_for_file: must_be_immutable
class AchievementRewardsClaimPopupState extends Equatable {
  AchievementRewardsClaimPopupState({
    this.achievementRewardsClaimPopupModelObj,
  });

  AchievementRewardsClaimPopupModel? achievementRewardsClaimPopupModelObj;

  @override
  List<Object?> get props => [achievementRewardsClaimPopupModelObj];
  AchievementRewardsClaimPopupState copyWith({
    AchievementRewardsClaimPopupModel? achievementRewardsClaimPopupModelObj,
  }) {
    return AchievementRewardsClaimPopupState(
      achievementRewardsClaimPopupModelObj:
          achievementRewardsClaimPopupModelObj ??
          this.achievementRewardsClaimPopupModelObj,
    );
  }
}
