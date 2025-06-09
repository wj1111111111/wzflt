part of 'my_personal_center_zero_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPersonalCenterZero widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyPersonalCenterZeroEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyPersonalCenterZero widget is first created.
class MyPersonalCenterZeroInitialEvent extends MyPersonalCenterZeroEvent {
  @override
  List<Object?> get props => [];
}
