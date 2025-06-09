part of 'top_up_records_category_filter_bloc.dart';

/// Represents the state of TopUpRecordsCategoryFilter in the application.

// ignore_for_file: must_be_immutable
class TopUpRecordsCategoryFilterState extends Equatable {
  TopUpRecordsCategoryFilterState({this.topUpRecordsCategoryFilterModelObj});

  TopUpRecordsCategoryFilterModel? topUpRecordsCategoryFilterModelObj;

  @override
  List<Object?> get props => [topUpRecordsCategoryFilterModelObj];
  TopUpRecordsCategoryFilterState copyWith({
    TopUpRecordsCategoryFilterModel? topUpRecordsCategoryFilterModelObj,
  }) {
    return TopUpRecordsCategoryFilterState(
      topUpRecordsCategoryFilterModelObj:
          topUpRecordsCategoryFilterModelObj ??
          this.topUpRecordsCategoryFilterModelObj,
    );
  }
}
