part of 'wallet_choose_amount_style_bloc.dart';

/// Represents the state of WalletChooseAmountStyle in the application.

// ignore_for_file: must_be_immutable
class WalletChooseAmountStyleState extends Equatable {
  WalletChooseAmountStyleState({
    this.radioGroup = "",
    this.walletChooseAmountStyleModelObj,
  });

  WalletChooseAmountStyleModel? walletChooseAmountStyleModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [radioGroup, walletChooseAmountStyleModelObj];
  WalletChooseAmountStyleState copyWith({
    String? radioGroup,
    WalletChooseAmountStyleModel? walletChooseAmountStyleModelObj,
  }) {
    return WalletChooseAmountStyleState(
      radioGroup: radioGroup ?? this.radioGroup,
      walletChooseAmountStyleModelObj:
          walletChooseAmountStyleModelObj ??
          this.walletChooseAmountStyleModelObj,
    );
  }
}
