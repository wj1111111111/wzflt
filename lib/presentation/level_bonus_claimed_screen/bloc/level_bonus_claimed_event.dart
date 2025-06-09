part of 'level_bonus_claimed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LevelBonusClaimed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LevelBonusClaimedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LevelBonusClaimed widget is first created.
class LevelBonusClaimedInitialEvent extends LevelBonusClaimedEvent {
  @override
  List<Object?> get props => [];
}
