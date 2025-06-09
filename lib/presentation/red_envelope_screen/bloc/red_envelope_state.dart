part of 'red_envelope_bloc.dart';

/// Represents the state of RedEnvelope in the application.

// ignore_for_file: must_be_immutable
class RedEnvelopeState extends Equatable {
  RedEnvelopeState({this.redEnvelopeModelObj});

  RedEnvelopeModel? redEnvelopeModelObj;

  @override
  List<Object?> get props => [redEnvelopeModelObj];
  RedEnvelopeState copyWith({RedEnvelopeModel? redEnvelopeModelObj}) {
    return RedEnvelopeState(
      redEnvelopeModelObj: redEnvelopeModelObj ?? this.redEnvelopeModelObj,
    );
  }
}
