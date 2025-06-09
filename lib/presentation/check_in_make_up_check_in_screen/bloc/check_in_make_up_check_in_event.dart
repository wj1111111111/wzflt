part of 'check_in_make_up_check_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckInMakeUpCheckIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CheckInMakeUpCheckInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CheckInMakeUpCheckIn widget is first created.
class CheckInMakeUpCheckInInitialEvent extends CheckInMakeUpCheckInEvent {
  @override
  List<Object?> get props => [];
}
