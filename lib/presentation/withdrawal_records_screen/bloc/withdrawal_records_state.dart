part of 'withdrawal_records_bloc.dart';

/// Represents the state of WithdrawalRecords in the application.

// ignore_for_file: must_be_immutable
class WithdrawalRecordsState extends Equatable {
  WithdrawalRecordsState({this.withdrawalRecordsModelObj});

  WithdrawalRecordsModel? withdrawalRecordsModelObj;

  @override
  List<Object?> get props => [withdrawalRecordsModelObj];
  WithdrawalRecordsState copyWith({
    WithdrawalRecordsModel? withdrawalRecordsModelObj,
  }) {
    return WithdrawalRecordsState(
      withdrawalRecordsModelObj:
          withdrawalRecordsModelObj ?? this.withdrawalRecordsModelObj,
    );
  }
}
