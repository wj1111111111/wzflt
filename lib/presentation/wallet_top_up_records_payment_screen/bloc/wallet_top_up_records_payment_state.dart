part of 'wallet_top_up_records_payment_bloc.dart';

/// Represents the state of WalletTopUpRecordsPayment in the application.

// ignore_for_file: must_be_immutable
class WalletTopUpRecordsPaymentState extends Equatable {
  WalletTopUpRecordsPaymentState({this.walletTopUpRecordsPaymentModelObj});

  WalletTopUpRecordsPaymentModel? walletTopUpRecordsPaymentModelObj;

  @override
  List<Object?> get props => [walletTopUpRecordsPaymentModelObj];
  WalletTopUpRecordsPaymentState copyWith({
    WalletTopUpRecordsPaymentModel? walletTopUpRecordsPaymentModelObj,
  }) {
    return WalletTopUpRecordsPaymentState(
      walletTopUpRecordsPaymentModelObj:
          walletTopUpRecordsPaymentModelObj ??
          this.walletTopUpRecordsPaymentModelObj,
    );
  }
}
