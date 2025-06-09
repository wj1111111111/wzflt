part of 'top_up_records_bloc.dart';

/// Represents the state of TopUpRecords in the application.

// ignore_for_file: must_be_immutable
class TopUpRecordsState extends Equatable {
  TopUpRecordsState({this.topUpRecordsModelObj});

  TopUpRecordsModel? topUpRecordsModelObj;

  @override
  List<Object?> get props => [topUpRecordsModelObj];
  TopUpRecordsState copyWith({TopUpRecordsModel? topUpRecordsModelObj}) {
    return TopUpRecordsState(
      topUpRecordsModelObj: topUpRecordsModelObj ?? this.topUpRecordsModelObj,
    );
  }
}
