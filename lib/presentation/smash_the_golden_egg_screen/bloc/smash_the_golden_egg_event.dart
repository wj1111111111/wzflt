part of 'smash_the_golden_egg_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SmashTheGoldenEgg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SmashTheGoldenEggEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SmashTheGoldenEgg widget is first created.
class SmashTheGoldenEggInitialEvent extends SmashTheGoldenEggEvent {
  @override
  List<Object?> get props => [];
}
