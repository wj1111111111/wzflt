part of 'achievement_rewards_rules_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AchievementRewardsRules widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AchievementRewardsRulesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AchievementRewardsRules widget is first created.
class AchievementRewardsRulesInitialEvent extends AchievementRewardsRulesEvent {
  @override
  List<Object?> get props => [];
}
