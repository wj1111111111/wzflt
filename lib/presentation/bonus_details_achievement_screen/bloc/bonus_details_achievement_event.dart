part of 'bonus_details_achievement_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BonusDetailsAchievement widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BonusDetailsAchievementEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BonusDetailsAchievement widget is first created.
class BonusDetailsAchievementInitialEvent extends BonusDetailsAchievementEvent {
  @override
  List<Object?> get props => [];
}
