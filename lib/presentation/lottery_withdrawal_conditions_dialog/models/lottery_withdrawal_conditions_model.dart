import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'timelinecheckma_item_model.dart';

/// This class defines the variables used in the [lottery_withdrawal_conditions_dialog],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LotteryWithdrawalConditionsModel extends Equatable {
  LotteryWithdrawalConditionsModel({this.timelinecheckmaItemList = const []});

  List<TimelinecheckmaItemModel> timelinecheckmaItemList;

  LotteryWithdrawalConditionsModel copyWith({
    List<TimelinecheckmaItemModel>? timelinecheckmaItemList,
  }) {
    return LotteryWithdrawalConditionsModel(
      timelinecheckmaItemList:
          timelinecheckmaItemList ?? this.timelinecheckmaItemList,
    );
  }

  @override
  List<Object?> get props => [timelinecheckmaItemList];
}
