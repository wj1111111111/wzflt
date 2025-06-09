import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wheel_result_won_cash_model.dart';
part 'wheel_result_won_cash_event.dart';
part 'wheel_result_won_cash_state.dart';

/// A bloc that manages the state of a WheelResultWonCash according to the event that is dispatched to it.
class WheelResultWonCashBloc
    extends Bloc<WheelResultWonCashEvent, WheelResultWonCashState> {
  WheelResultWonCashBloc(WheelResultWonCashState initialState)
    : super(initialState) {
    on<WheelResultWonCashInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelResultWonCashInitialEvent event,
    Emitter<WheelResultWonCashState> emit,
  ) async {}
}
