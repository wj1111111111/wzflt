import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'staggerediconvi_item_model.dart';

/// This class defines the variables used in the [daily_cumulative_deposit_event_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class DailyCumulativeDepositEventModel extends Equatable {
  DailyCumulativeDepositEventModel({this.staggerediconviItemList = const []});

  List<StaggerediconviItemModel> staggerediconviItemList;

  DailyCumulativeDepositEventModel copyWith({
    List<StaggerediconviItemModel>? staggerediconviItemList,
  }) {
    return DailyCumulativeDepositEventModel(
      staggerediconviItemList:
          staggerediconviItemList ?? this.staggerediconviItemList,
    );
  }

  @override
  List<Object?> get props => [staggerediconviItemList];
}
