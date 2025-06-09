part of 'home_popup_text_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePopupText widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomePopupTextEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomePopupText widget is first created.
class HomePopupTextInitialEvent extends HomePopupTextEvent {
  @override
  List<Object?> get props => [];
}
