part of 'popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Popup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Popup widget is first created.
class PopupInitialEvent extends PopupEvent {
  @override
  List<Object?> get props => [];
}
