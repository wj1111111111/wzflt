part of 'top_up_records_withdrawal_rejected_bloc.dart';

/// Represents the state of TopUpRecordsWithdrawalRejected in the application.

// ignore_for_file: must_be_immutable
class TopUpRecordsWithdrawalRejectedState extends Equatable {
  TopUpRecordsWithdrawalRejectedState({
    this.descriptionController,
    this.topUpRecordsWithdrawalRejectedModelObj,
  });

  TextEditingController? descriptionController;

  TopUpRecordsWithdrawalRejectedModel? topUpRecordsWithdrawalRejectedModelObj;

  @override
  List<Object?> get props => [
    descriptionController,
    topUpRecordsWithdrawalRejectedModelObj,
  ];
  TopUpRecordsWithdrawalRejectedState copyWith({
    TextEditingController? descriptionController,
    TopUpRecordsWithdrawalRejectedModel? topUpRecordsWithdrawalRejectedModelObj,
  }) {
    return TopUpRecordsWithdrawalRejectedState(
      descriptionController:
          descriptionController ?? this.descriptionController,
      topUpRecordsWithdrawalRejectedModelObj:
          topUpRecordsWithdrawalRejectedModelObj ??
          this.topUpRecordsWithdrawalRejectedModelObj,
    );
  }
}
