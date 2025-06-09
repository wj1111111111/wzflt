part of 'check_in_day_5_check_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckInDay5CheckIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CheckInDay5CheckInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CheckInDay5CheckIn widget is first created.
class CheckInDay5CheckInInitialEvent extends CheckInDay5CheckInEvent {
  @override
  List<Object?> get props => [];
}
