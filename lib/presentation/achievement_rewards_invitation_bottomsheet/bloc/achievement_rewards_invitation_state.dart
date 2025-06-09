part of 'achievement_rewards_invitation_bloc.dart';

/// Represents the state of AchievementRewardsInvitation in the application.

// ignore_for_file: must_be_immutable
class AchievementRewardsInvitationState extends Equatable {
  AchievementRewardsInvitationState({
    this.achievementRewardsInvitationModelObj,
  });

  AchievementRewardsInvitationModel? achievementRewardsInvitationModelObj;

  @override
  List<Object?> get props => [achievementRewardsInvitationModelObj];
  AchievementRewardsInvitationState copyWith({
    AchievementRewardsInvitationModel? achievementRewardsInvitationModelObj,
  }) {
    return AchievementRewardsInvitationState(
      achievementRewardsInvitationModelObj:
          achievementRewardsInvitationModelObj ??
          this.achievementRewardsInvitationModelObj,
    );
  }
}
