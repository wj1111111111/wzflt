part of 'wheel_spin_main_no_withdrawal_bloc.dart';

/// Represents the state of WheelSpinMainNoWithdrawal in the application.

// ignore_for_file: must_be_immutable
class WheelSpinMainNoWithdrawalState extends Equatable {
  WheelSpinMainNoWithdrawalState({this.wheelSpinMainNoWithdrawalModelObj});

  WheelSpinMainNoWithdrawalModel? wheelSpinMainNoWithdrawalModelObj;

  @override
  List<Object?> get props => [wheelSpinMainNoWithdrawalModelObj];
  WheelSpinMainNoWithdrawalState copyWith({
    WheelSpinMainNoWithdrawalModel? wheelSpinMainNoWithdrawalModelObj,
  }) {
    return WheelSpinMainNoWithdrawalState(
      wheelSpinMainNoWithdrawalModelObj:
          wheelSpinMainNoWithdrawalModelObj ??
          this.wheelSpinMainNoWithdrawalModelObj,
    );
  }
}
