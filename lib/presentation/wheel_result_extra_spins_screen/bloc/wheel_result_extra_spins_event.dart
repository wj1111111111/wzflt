part of 'wheel_result_extra_spins_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WheelResultExtraSpins widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WheelResultExtraSpinsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WheelResultExtraSpins widget is first created.
class WheelResultExtraSpinsInitialEvent extends WheelResultExtraSpinsEvent {
  @override
  List<Object?> get props => [];
}
