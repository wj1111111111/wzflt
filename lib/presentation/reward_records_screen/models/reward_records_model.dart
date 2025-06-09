import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'reward_records_item_model.dart';

/// This class defines the variables used in the [reward_records_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class RewardRecordsModel extends Equatable {
  RewardRecordsModel({this.rewardRecordsItemList = const []});

  List<RewardRecordsItemModel> rewardRecordsItemList;

  RewardRecordsModel copyWith({
    List<RewardRecordsItemModel>? rewardRecordsItemList,
  }) {
    return RewardRecordsModel(
      rewardRecordsItemList:
          rewardRecordsItemList ?? this.rewardRecordsItemList,
    );
  }

  @override
  List<Object?> get props => [rewardRecordsItemList];
}
