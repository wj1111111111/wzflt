part of 'home_single_game_entry_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeSingleGameEntryPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeSingleGameEntryPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeSingleGameEntryPopup widget is first created.
class HomeSingleGameEntryPopupInitialEvent
    extends HomeSingleGameEntryPopupEvent {
  @override
  List<Object?> get props => [];
}
