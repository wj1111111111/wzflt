part of 'home_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomePopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomePopup widget is first created.
class HomePopupInitialEvent extends HomePopupEvent {
  @override
  List<Object?> get props => [];
}
