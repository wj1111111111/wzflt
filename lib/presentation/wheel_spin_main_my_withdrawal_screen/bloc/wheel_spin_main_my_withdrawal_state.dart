part of 'wheel_spin_main_my_withdrawal_bloc.dart';

/// Represents the state of WheelSpinMainMyWithdrawal in the application.

// ignore_for_file: must_be_immutable
class WheelSpinMainMyWithdrawalState extends Equatable {
  WheelSpinMainMyWithdrawalState({this.wheelSpinMainMyWithdrawalModelObj});

  WheelSpinMainMyWithdrawalModel? wheelSpinMainMyWithdrawalModelObj;

  @override
  List<Object?> get props => [wheelSpinMainMyWithdrawalModelObj];
  WheelSpinMainMyWithdrawalState copyWith({
    WheelSpinMainMyWithdrawalModel? wheelSpinMainMyWithdrawalModelObj,
  }) {
    return WheelSpinMainMyWithdrawalState(
      wheelSpinMainMyWithdrawalModelObj:
          wheelSpinMainMyWithdrawalModelObj ??
          this.wheelSpinMainMyWithdrawalModelObj,
    );
  }
}
