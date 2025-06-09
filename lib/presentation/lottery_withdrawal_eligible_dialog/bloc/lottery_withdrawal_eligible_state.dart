part of 'lottery_withdrawal_eligible_bloc.dart';

/// Represents the state of LotteryWithdrawalEligible in the application.

// ignore_for_file: must_be_immutable
class LotteryWithdrawalEligibleState extends Equatable {
  LotteryWithdrawalEligibleState({this.lotteryWithdrawalEligibleModelObj});

  LotteryWithdrawalEligibleModel? lotteryWithdrawalEligibleModelObj;

  @override
  List<Object?> get props => [lotteryWithdrawalEligibleModelObj];
  LotteryWithdrawalEligibleState copyWith({
    LotteryWithdrawalEligibleModel? lotteryWithdrawalEligibleModelObj,
  }) {
    return LotteryWithdrawalEligibleState(
      lotteryWithdrawalEligibleModelObj:
          lotteryWithdrawalEligibleModelObj ??
          this.lotteryWithdrawalEligibleModelObj,
    );
  }
}
