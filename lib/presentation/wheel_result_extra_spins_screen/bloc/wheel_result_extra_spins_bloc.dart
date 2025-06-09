import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wheel_result_extra_spins_model.dart';
part 'wheel_result_extra_spins_event.dart';
part 'wheel_result_extra_spins_state.dart';

/// A bloc that manages the state of a WheelResultExtraSpins according to the event that is dispatched to it.
class WheelResultExtraSpinsBloc
    extends Bloc<WheelResultExtraSpinsEvent, WheelResultExtraSpinsState> {
  WheelResultExtraSpinsBloc(WheelResultExtraSpinsState initialState)
    : super(initialState) {
    on<WheelResultExtraSpinsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelResultExtraSpinsInitialEvent event,
    Emitter<WheelResultExtraSpinsState> emit,
  ) async {}
}
