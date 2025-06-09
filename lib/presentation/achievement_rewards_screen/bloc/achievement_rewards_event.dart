part of 'achievement_rewards_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AchievementRewards widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AchievementRewardsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AchievementRewards widget is first created.
class AchievementRewardsInitialEvent extends AchievementRewardsEvent {
  @override
  List<Object?> get props => [];
}
