part of 'top_up_records_time_filter_bloc.dart';

/// Represents the state of TopUpRecordsTimeFilter in the application.

// ignore_for_file: must_be_immutable
class TopUpRecordsTimeFilterState extends Equatable {
  TopUpRecordsTimeFilterState({this.topUpRecordsTimeFilterModelObj});

  TopUpRecordsTimeFilterModel? topUpRecordsTimeFilterModelObj;

  @override
  List<Object?> get props => [topUpRecordsTimeFilterModelObj];
  TopUpRecordsTimeFilterState copyWith({
    TopUpRecordsTimeFilterModel? topUpRecordsTimeFilterModelObj,
  }) {
    return TopUpRecordsTimeFilterState(
      topUpRecordsTimeFilterModelObj:
          topUpRecordsTimeFilterModelObj ?? this.topUpRecordsTimeFilterModelObj,
    );
  }
}
