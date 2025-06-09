part of 'level_bonus_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LevelBonus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LevelBonusEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LevelBonus widget is first created.
class LevelBonusInitialEvent extends LevelBonusEvent {
  @override
  List<Object?> get props => [];
}
