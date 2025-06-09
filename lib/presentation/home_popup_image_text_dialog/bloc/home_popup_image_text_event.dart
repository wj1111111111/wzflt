part of 'home_popup_image_text_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePopupImageText widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomePopupImageTextEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomePopupImageText widget is first created.
class HomePopupImageTextInitialEvent extends HomePopupImageTextEvent {
  @override
  List<Object?> get props => [];
}
