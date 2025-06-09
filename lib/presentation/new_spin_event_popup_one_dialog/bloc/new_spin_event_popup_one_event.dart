part of 'new_spin_event_popup_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewSpinEventPopupOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NewSpinEventPopupOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NewSpinEventPopupOne widget is first created.
class NewSpinEventPopupOneInitialEvent extends NewSpinEventPopupOneEvent {
  @override
  List<Object?> get props => [];
}
