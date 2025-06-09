part of 'home_seven_items_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeSevenItems widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeSevenItemsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeSevenItems widget is first created.
class HomeSevenItemsInitialEvent extends HomeSevenItemsEvent {
  @override
  List<Object?> get props => [];
}
