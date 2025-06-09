part of 'home_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeOne widget is first created.
class HomeOneInitialEvent extends HomeOneEvent {
  @override
  List<Object?> get props => [];
}
