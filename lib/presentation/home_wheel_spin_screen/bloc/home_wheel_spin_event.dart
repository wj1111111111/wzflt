part of 'home_wheel_spin_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeWheelSpin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeWheelSpinEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeWheelSpin widget is first created.
class HomeWheelSpinInitialEvent extends HomeWheelSpinEvent {
  @override
  List<Object?> get props => [];
}
