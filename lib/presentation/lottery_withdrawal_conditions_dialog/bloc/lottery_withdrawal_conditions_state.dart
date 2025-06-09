part of 'lottery_withdrawal_conditions_bloc.dart';

/// Represents the state of LotteryWithdrawalConditions in the application.

// ignore_for_file: must_be_immutable
class LotteryWithdrawalConditionsState extends Equatable {
  LotteryWithdrawalConditionsState({this.lotteryWithdrawalConditionsModelObj});

  LotteryWithdrawalConditionsModel? lotteryWithdrawalConditionsModelObj;

  @override
  List<Object?> get props => [lotteryWithdrawalConditionsModelObj];
  LotteryWithdrawalConditionsState copyWith({
    LotteryWithdrawalConditionsModel? lotteryWithdrawalConditionsModelObj,
  }) {
    return LotteryWithdrawalConditionsState(
      lotteryWithdrawalConditionsModelObj:
          lotteryWithdrawalConditionsModelObj ??
          this.lotteryWithdrawalConditionsModelObj,
    );
  }
}
