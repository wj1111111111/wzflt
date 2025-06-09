part of 'information_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InformationFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class InformationFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the InformationFour widget is first created.
class InformationFourInitialEvent extends InformationFourEvent {
  @override
  List<Object?> get props => [];
}
