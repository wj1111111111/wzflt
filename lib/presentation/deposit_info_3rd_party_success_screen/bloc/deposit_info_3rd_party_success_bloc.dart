import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/deposit_info_3rd_party_success_model.dart';
part 'deposit_info_3rd_party_success_event.dart';
part 'deposit_info_3rd_party_success_state.dart';

/// A bloc that manages the state of a DepositInfo3rdPartySuccess according to the event that is dispatched to it.
class DepositInfo3rdPartySuccessBloc
    extends
        Bloc<DepositInfo3rdPartySuccessEvent, DepositInfo3rdPartySuccessState> {
  DepositInfo3rdPartySuccessBloc(DepositInfo3rdPartySuccessState initialState)
    : super(initialState) {
    on<DepositInfo3rdPartySuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DepositInfo3rdPartySuccessInitialEvent event,
    Emitter<DepositInfo3rdPartySuccessState> emit,
  ) async {}
}
