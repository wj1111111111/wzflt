part of 'red_envelope_popup_bloc.dart';

/// Represents the state of RedEnvelopePopup in the application.

// ignore_for_file: must_be_immutable
class RedEnvelopePopupState extends Equatable {
  RedEnvelopePopupState({this.redEnvelopePopupModelObj});

  RedEnvelopePopupModel? redEnvelopePopupModelObj;

  @override
  List<Object?> get props => [redEnvelopePopupModelObj];
  RedEnvelopePopupState copyWith({
    RedEnvelopePopupModel? redEnvelopePopupModelObj,
  }) {
    return RedEnvelopePopupState(
      redEnvelopePopupModelObj:
          redEnvelopePopupModelObj ?? this.redEnvelopePopupModelObj,
    );
  }
}
