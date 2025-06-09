part of 'achievement_rewards_invitation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AchievementRewardsInvitation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AchievementRewardsInvitationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AchievementRewardsInvitation widget is first created.
class AchievementRewardsInvitationInitialEvent
    extends AchievementRewardsInvitationEvent {
  @override
  List<Object?> get props => [];
}
