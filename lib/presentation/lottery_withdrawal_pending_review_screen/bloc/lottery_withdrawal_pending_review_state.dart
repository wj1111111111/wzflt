part of 'lottery_withdrawal_pending_review_bloc.dart';

/// Represents the state of LotteryWithdrawalPendingReview in the application.

// ignore_for_file: must_be_immutable
class LotteryWithdrawalPendingReviewState extends Equatable {
  LotteryWithdrawalPendingReviewState({
    this.lotteryWithdrawalPendingReviewModelObj,
  });

  LotteryWithdrawalPendingReviewModel? lotteryWithdrawalPendingReviewModelObj;

  @override
  List<Object?> get props => [lotteryWithdrawalPendingReviewModelObj];
  LotteryWithdrawalPendingReviewState copyWith({
    LotteryWithdrawalPendingReviewModel? lotteryWithdrawalPendingReviewModelObj,
  }) {
    return LotteryWithdrawalPendingReviewState(
      lotteryWithdrawalPendingReviewModelObj:
          lotteryWithdrawalPendingReviewModelObj ??
          this.lotteryWithdrawalPendingReviewModelObj,
    );
  }
}
