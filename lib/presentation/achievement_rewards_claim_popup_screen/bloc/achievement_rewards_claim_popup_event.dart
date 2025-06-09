part of 'achievement_rewards_claim_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AchievementRewardsClaimPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AchievementRewardsClaimPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AchievementRewardsClaimPopup widget is first created.
class AchievementRewardsClaimPopupInitialEvent
    extends AchievementRewardsClaimPopupEvent {
  @override
  List<Object?> get props => [];
}
