part of 'wheel_spin_main_hidden_levels_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WheelSpinMainHiddenLevels widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WheelSpinMainHiddenLevelsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WheelSpinMainHiddenLevels widget is first created.
class WheelSpinMainHiddenLevelsInitialEvent
    extends WheelSpinMainHiddenLevelsEvent {
  @override
  List<Object?> get props => [];
}
