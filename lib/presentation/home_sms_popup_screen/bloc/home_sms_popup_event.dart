part of 'home_sms_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeSmsPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeSmsPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeSmsPopup widget is first created.
class HomeSmsPopupInitialEvent extends HomeSmsPopupEvent {
  @override
  List<Object?> get props => [];
}
