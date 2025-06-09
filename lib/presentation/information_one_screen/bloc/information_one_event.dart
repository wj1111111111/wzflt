part of 'information_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InformationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class InformationOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the InformationOne widget is first created.
class InformationOneInitialEvent extends InformationOneEvent {
  @override
  List<Object?> get props => [];
}
