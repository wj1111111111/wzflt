part of 'help_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Help widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HelpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Help widget is first created.
class HelpInitialEvent extends HelpEvent {
  @override
  List<Object?> get props => [];
}
