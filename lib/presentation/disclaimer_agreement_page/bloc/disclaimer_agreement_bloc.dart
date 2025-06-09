import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/disclaimer_agreement_model.dart';
part 'disclaimer_agreement_event.dart';
part 'disclaimer_agreement_state.dart';

/// A bloc that manages the state of a DisclaimerAgreement according to the event that is dispatched to it.
class DisclaimerAgreementBloc
    extends Bloc<DisclaimerAgreementEvent, DisclaimerAgreementState> {
  DisclaimerAgreementBloc(DisclaimerAgreementState initialState)
    : super(initialState) {
    on<DisclaimerAgreementInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DisclaimerAgreementInitialEvent event,
    Emitter<DisclaimerAgreementState> emit,
  ) async {}
}
