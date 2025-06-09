part of 'home_popup_image_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePopupImage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomePopupImageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomePopupImage widget is first created.
class HomePopupImageInitialEvent extends HomePopupImageEvent {
  @override
  List<Object?> get props => [];
}
