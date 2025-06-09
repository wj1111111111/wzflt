part of 'wheel_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WheelPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WheelPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WheelPopup widget is first created.
class WheelPopupInitialEvent extends WheelPopupEvent {
  @override
  List<Object?> get props => [];
}
