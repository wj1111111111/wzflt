import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wheel_result_won_cash_one_model.dart';
part 'wheel_result_won_cash_one_event.dart';
part 'wheel_result_won_cash_one_state.dart';

/// A bloc that manages the state of a WheelResultWonCashOne according to the event that is dispatched to it.
class WheelResultWonCashOneBloc
    extends Bloc<WheelResultWonCashOneEvent, WheelResultWonCashOneState> {
  WheelResultWonCashOneBloc(WheelResultWonCashOneState initialState)
    : super(initialState) {
    on<WheelResultWonCashOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelResultWonCashOneInitialEvent event,
    Emitter<WheelResultWonCashOneState> emit,
  ) async {}
}
