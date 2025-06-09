part of 'front_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Front widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class FrontEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Front widget is first created.
class FrontInitialEvent extends FrontEvent {
  @override
  List<Object?> get props => [];
}
