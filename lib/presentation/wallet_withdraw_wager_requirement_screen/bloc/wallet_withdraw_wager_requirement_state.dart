part of 'wallet_withdraw_wager_requirement_bloc.dart';

/// Represents the state of WalletWithdrawWagerRequirement in the application.

// ignore_for_file: must_be_immutable
class WalletWithdrawWagerRequirementState extends Equatable {
  WalletWithdrawWagerRequirementState({
    this.passwordController,
    this.oneoneController,
    this.sliderIndex = 0,
    this.walletWithdrawWagerRequirementModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? oneoneController;

  WalletWithdrawWagerRequirementModel? walletWithdrawWagerRequirementModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
    passwordController,
    oneoneController,
    sliderIndex,
    walletWithdrawWagerRequirementModelObj,
  ];
  WalletWithdrawWagerRequirementState copyWith({
    TextEditingController? passwordController,
    TextEditingController? oneoneController,
    int? sliderIndex,
    WalletWithdrawWagerRequirementModel? walletWithdrawWagerRequirementModelObj,
  }) {
    return WalletWithdrawWagerRequirementState(
      passwordController: passwordController ?? this.passwordController,
      oneoneController: oneoneController ?? this.oneoneController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      walletWithdrawWagerRequirementModelObj:
          walletWithdrawWagerRequirementModelObj ??
          this.walletWithdrawWagerRequirementModelObj,
    );
  }
}
