part of 'wallet_top_up_records_withdrawal_bloc.dart';

/// Represents the state of WalletTopUpRecordsWithdrawal in the application.

// ignore_for_file: must_be_immutable
class WalletTopUpRecordsWithdrawalState extends Equatable {
  WalletTopUpRecordsWithdrawalState({
    this.descriptionController,
    this.walletTopUpRecordsWithdrawalModelObj,
  });

  TextEditingController? descriptionController;

  WalletTopUpRecordsWithdrawalModel? walletTopUpRecordsWithdrawalModelObj;

  @override
  List<Object?> get props => [
    descriptionController,
    walletTopUpRecordsWithdrawalModelObj,
  ];
  WalletTopUpRecordsWithdrawalState copyWith({
    TextEditingController? descriptionController,
    WalletTopUpRecordsWithdrawalModel? walletTopUpRecordsWithdrawalModelObj,
  }) {
    return WalletTopUpRecordsWithdrawalState(
      descriptionController:
          descriptionController ?? this.descriptionController,
      walletTopUpRecordsWithdrawalModelObj:
          walletTopUpRecordsWithdrawalModelObj ??
          this.walletTopUpRecordsWithdrawalModelObj,
    );
  }
}
