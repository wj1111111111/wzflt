part of 'red_envelope_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RedEnvelopePopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RedEnvelopePopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RedEnvelopePopup widget is first created.
class RedEnvelopePopupInitialEvent extends RedEnvelopePopupEvent {
  @override
  List<Object?> get props => [];
}
