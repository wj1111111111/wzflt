import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/batch_bonus_deposit_open_treasure_model.dart';
part 'batch_bonus_deposit_open_treasure_event.dart';
part 'batch_bonus_deposit_open_treasure_state.dart';

/// A bloc that manages the state of a BatchBonusDepositOpenTreasure according to the event that is dispatched to it.
class BatchBonusDepositOpenTreasureBloc
    extends
        Bloc<
          BatchBonusDepositOpenTreasureEvent,
          BatchBonusDepositOpenTreasureState
        > {
  BatchBonusDepositOpenTreasureBloc(
    BatchBonusDepositOpenTreasureState initialState,
  ) : super(initialState) {
    on<BatchBonusDepositOpenTreasureInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BatchBonusDepositOpenTreasureInitialEvent event,
    Emitter<BatchBonusDepositOpenTreasureState> emit,
  ) async {}
}
