part of 'check_in_already_checked_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckInAlreadyCheckedIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CheckInAlreadyCheckedInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CheckInAlreadyCheckedIn widget is first created.
class CheckInAlreadyCheckedInInitialEvent extends CheckInAlreadyCheckedInEvent {
  @override
  List<Object?> get props => [];
}
