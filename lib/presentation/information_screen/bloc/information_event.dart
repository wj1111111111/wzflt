part of 'information_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Information widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class InformationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Information widget is first created.
class InformationInitialEvent extends InformationEvent {
  @override
  List<Object?> get props => [];
}
