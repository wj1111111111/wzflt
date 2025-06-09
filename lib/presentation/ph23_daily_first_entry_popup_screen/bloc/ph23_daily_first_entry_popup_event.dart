part of 'ph23_daily_first_entry_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ph23DailyFirstEntryPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Ph23DailyFirstEntryPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ph23DailyFirstEntryPopup widget is first created.
class Ph23DailyFirstEntryPopupInitialEvent
    extends Ph23DailyFirstEntryPopupEvent {
  @override
  List<Object?> get props => [];
}
