part of 'lottery_withdrawal_pending_review_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LotteryWithdrawalPendingReview widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LotteryWithdrawalPendingReviewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LotteryWithdrawalPendingReview widget is first created.
class LotteryWithdrawalPendingReviewInitialEvent
    extends LotteryWithdrawalPendingReviewEvent {
  @override
  List<Object?> get props => [];
}
