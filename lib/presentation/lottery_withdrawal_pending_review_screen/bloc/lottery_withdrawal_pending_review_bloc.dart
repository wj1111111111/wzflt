import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/lottery_withdrawal_pending_review_model.dart';
part 'lottery_withdrawal_pending_review_event.dart';
part 'lottery_withdrawal_pending_review_state.dart';

/// A bloc that manages the state of a LotteryWithdrawalPendingReview according to the event that is dispatched to it.
class LotteryWithdrawalPendingReviewBloc
    extends
        Bloc<
          LotteryWithdrawalPendingReviewEvent,
          LotteryWithdrawalPendingReviewState
        > {
  LotteryWithdrawalPendingReviewBloc(
    LotteryWithdrawalPendingReviewState initialState,
  ) : super(initialState) {
    on<LotteryWithdrawalPendingReviewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LotteryWithdrawalPendingReviewInitialEvent event,
    Emitter<LotteryWithdrawalPendingReviewState> emit,
  ) async {}
}
