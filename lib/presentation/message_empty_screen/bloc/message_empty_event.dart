part of 'message_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MessageEmptyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MessageEmpty widget is first created.
class MessageEmptyInitialEvent extends MessageEmptyEvent {
  @override
  List<Object?> get props => [];
}
