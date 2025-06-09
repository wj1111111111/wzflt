part of 'home_spin_the_wheel_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeSpinTheWheelPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeSpinTheWheelPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeSpinTheWheelPopup widget is first created.
class HomeSpinTheWheelPopupInitialEvent extends HomeSpinTheWheelPopupEvent {
  @override
  List<Object?> get props => [];
}
