part of 'wallet_top_up_records_time_bloc.dart';

/// Represents the state of WalletTopUpRecordsTime in the application.

// ignore_for_file: must_be_immutable
class WalletTopUpRecordsTimeState extends Equatable {
  WalletTopUpRecordsTimeState({this.walletTopUpRecordsTimeModelObj});

  WalletTopUpRecordsTimeModel? walletTopUpRecordsTimeModelObj;

  @override
  List<Object?> get props => [walletTopUpRecordsTimeModelObj];
  WalletTopUpRecordsTimeState copyWith({
    WalletTopUpRecordsTimeModel? walletTopUpRecordsTimeModelObj,
  }) {
    return WalletTopUpRecordsTimeState(
      walletTopUpRecordsTimeModelObj:
          walletTopUpRecordsTimeModelObj ?? this.walletTopUpRecordsTimeModelObj,
    );
  }
}
