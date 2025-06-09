part of 'lottery_withdrawal_eligible_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LotteryWithdrawalEligible widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LotteryWithdrawalEligibleEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LotteryWithdrawalEligible widget is first created.
class LotteryWithdrawalEligibleInitialEvent
    extends LotteryWithdrawalEligibleEvent {
  @override
  List<Object?> get props => [];
}
