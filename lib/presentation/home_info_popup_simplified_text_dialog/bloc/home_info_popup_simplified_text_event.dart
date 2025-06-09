part of 'home_info_popup_simplified_text_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeInfoPopupSimplifiedText widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeInfoPopupSimplifiedTextEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeInfoPopupSimplifiedText widget is first created.
class HomeInfoPopupSimplifiedTextInitialEvent
    extends HomeInfoPopupSimplifiedTextEvent {
  @override
  List<Object?> get props => [];
}
