part of 'not_winner_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotWinnerPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NotWinnerPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NotWinnerPopup widget is first created.
class NotWinnerPopupInitialEvent extends NotWinnerPopupEvent {
  @override
  List<Object?> get props => [];
}
