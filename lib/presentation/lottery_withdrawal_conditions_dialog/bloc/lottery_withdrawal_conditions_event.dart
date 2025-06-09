part of 'lottery_withdrawal_conditions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LotteryWithdrawalConditions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LotteryWithdrawalConditionsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LotteryWithdrawalConditions widget is first created.
class LotteryWithdrawalConditionsInitialEvent
    extends LotteryWithdrawalConditionsEvent {
  @override
  List<Object?> get props => [];
}
