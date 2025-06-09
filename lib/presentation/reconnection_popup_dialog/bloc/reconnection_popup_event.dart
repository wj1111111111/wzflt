part of 'reconnection_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReconnectionPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReconnectionPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReconnectionPopup widget is first created.
class ReconnectionPopupInitialEvent extends ReconnectionPopupEvent {
  @override
  List<Object?> get props => [];
}
