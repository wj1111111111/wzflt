part of 'red_envelope_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RedEnvelope widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RedEnvelopeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RedEnvelope widget is first created.
class RedEnvelopeInitialEvent extends RedEnvelopeEvent {
  @override
  List<Object?> get props => [];
}
