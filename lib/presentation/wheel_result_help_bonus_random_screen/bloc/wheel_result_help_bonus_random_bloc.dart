import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wheel_result_help_bonus_random_model.dart';
part 'wheel_result_help_bonus_random_event.dart';
part 'wheel_result_help_bonus_random_state.dart';

/// A bloc that manages the state of a WheelResultHelpBonusRandom according to the event that is dispatched to it.
class WheelResultHelpBonusRandomBloc
    extends
        Bloc<WheelResultHelpBonusRandomEvent, WheelResultHelpBonusRandomState> {
  WheelResultHelpBonusRandomBloc(WheelResultHelpBonusRandomState initialState)
    : super(initialState) {
    on<WheelResultHelpBonusRandomInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelResultHelpBonusRandomInitialEvent event,
    Emitter<WheelResultHelpBonusRandomState> emit,
  ) async {}
}
