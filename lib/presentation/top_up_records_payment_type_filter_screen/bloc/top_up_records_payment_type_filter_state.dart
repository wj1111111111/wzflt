part of 'top_up_records_payment_type_filter_bloc.dart';

/// Represents the state of TopUpRecordsPaymentTypeFilter in the application.

// ignore_for_file: must_be_immutable
class TopUpRecordsPaymentTypeFilterState extends Equatable {
  TopUpRecordsPaymentTypeFilterState({
    this.topUpRecordsPaymentTypeFilterModelObj,
  });

  TopUpRecordsPaymentTypeFilterModel? topUpRecordsPaymentTypeFilterModelObj;

  @override
  List<Object?> get props => [topUpRecordsPaymentTypeFilterModelObj];
  TopUpRecordsPaymentTypeFilterState copyWith({
    TopUpRecordsPaymentTypeFilterModel? topUpRecordsPaymentTypeFilterModelObj,
  }) {
    return TopUpRecordsPaymentTypeFilterState(
      topUpRecordsPaymentTypeFilterModelObj:
          topUpRecordsPaymentTypeFilterModelObj ??
          this.topUpRecordsPaymentTypeFilterModelObj,
    );
  }
}
