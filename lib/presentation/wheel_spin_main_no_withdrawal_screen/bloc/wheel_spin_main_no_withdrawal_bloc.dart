import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wheel_spin_main_no_withdrawal_model.dart';
part 'wheel_spin_main_no_withdrawal_event.dart';
part 'wheel_spin_main_no_withdrawal_state.dart';

/// A bloc that manages the state of a WheelSpinMainNoWithdrawal according to the event that is dispatched to it.
class WheelSpinMainNoWithdrawalBloc
    extends
        Bloc<WheelSpinMainNoWithdrawalEvent, WheelSpinMainNoWithdrawalState> {
  WheelSpinMainNoWithdrawalBloc(WheelSpinMainNoWithdrawalState initialState)
    : super(initialState) {
    on<WheelSpinMainNoWithdrawalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelSpinMainNoWithdrawalInitialEvent event,
    Emitter<WheelSpinMainNoWithdrawalState> emit,
  ) async {}
}
