part of 'my_personal_center_zero_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPersonalCenterZeroOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyPersonalCenterZeroOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyPersonalCenterZeroOne widget is first created.
class MyPersonalCenterZeroOneInitialEvent extends MyPersonalCenterZeroOneEvent {
  @override
  List<Object?> get props => [];
}
