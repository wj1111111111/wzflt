part of 'reward_records_bloc.dart';

/// Represents the state of RewardRecords in the application.

// ignore_for_file: must_be_immutable
class RewardRecordsState extends Equatable {
  RewardRecordsState({this.rewardRecordsModelObj});

  RewardRecordsModel? rewardRecordsModelObj;

  @override
  List<Object?> get props => [rewardRecordsModelObj];
  RewardRecordsState copyWith({RewardRecordsModel? rewardRecordsModelObj}) {
    return RewardRecordsState(
      rewardRecordsModelObj:
          rewardRecordsModelObj ?? this.rewardRecordsModelObj,
    );
  }
}
