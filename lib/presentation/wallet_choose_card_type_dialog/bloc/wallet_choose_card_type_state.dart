part of 'wallet_choose_card_type_bloc.dart';

/// Represents the state of WalletChooseCardType in the application.

// ignore_for_file: must_be_immutable
class WalletChooseCardTypeState extends Equatable {
  WalletChooseCardTypeState({this.walletChooseCardTypeModelObj});

  WalletChooseCardTypeModel? walletChooseCardTypeModelObj;

  @override
  List<Object?> get props => [walletChooseCardTypeModelObj];
  WalletChooseCardTypeState copyWith({
    WalletChooseCardTypeModel? walletChooseCardTypeModelObj,
  }) {
    return WalletChooseCardTypeState(
      walletChooseCardTypeModelObj:
          walletChooseCardTypeModelObj ?? this.walletChooseCardTypeModelObj,
    );
  }
}
