part of 'check_in_day_4_check_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckInDay4CheckIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CheckInDay4CheckInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CheckInDay4CheckIn widget is first created.
class CheckInDay4CheckInInitialEvent extends CheckInDay4CheckInEvent {
  @override
  List<Object?> get props => [];
}
