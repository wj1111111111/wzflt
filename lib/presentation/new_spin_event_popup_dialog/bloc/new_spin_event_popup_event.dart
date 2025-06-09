part of 'new_spin_event_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewSpinEventPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NewSpinEventPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NewSpinEventPopup widget is first created.
class NewSpinEventPopupInitialEvent extends NewSpinEventPopupEvent {
  @override
  List<Object?> get props => [];
}
