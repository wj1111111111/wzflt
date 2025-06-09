import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/lottery_withdrawal_eligible_model.dart';
part 'lottery_withdrawal_eligible_event.dart';
part 'lottery_withdrawal_eligible_state.dart';

/// A bloc that manages the state of a LotteryWithdrawalEligible according to the event that is dispatched to it.
class LotteryWithdrawalEligibleBloc
    extends
        Bloc<LotteryWithdrawalEligibleEvent, LotteryWithdrawalEligibleState> {
  LotteryWithdrawalEligibleBloc(LotteryWithdrawalEligibleState initialState)
    : super(initialState) {
    on<LotteryWithdrawalEligibleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LotteryWithdrawalEligibleInitialEvent event,
    Emitter<LotteryWithdrawalEligibleState> emit,
  ) async {}
}
