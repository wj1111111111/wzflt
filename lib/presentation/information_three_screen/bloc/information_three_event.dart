part of 'information_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InformationThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class InformationThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the InformationThree widget is first created.
class InformationThreeInitialEvent extends InformationThreeEvent {
  @override
  List<Object?> get props => [];
}
