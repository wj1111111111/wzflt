part of 'check_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CheckInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CheckIn widget is first created.
class CheckInInitialEvent extends CheckInEvent {
  @override
  List<Object?> get props => [];
}
