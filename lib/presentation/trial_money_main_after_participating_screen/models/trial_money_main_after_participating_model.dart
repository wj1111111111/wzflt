import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridgoodluck_item_model.dart';

/// This class defines the variables used in the [trial_money_main_after_participating_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class TrialMoneyMainAfterParticipatingModel extends Equatable {
  TrialMoneyMainAfterParticipatingModel({this.gridgoodluckItemList = const []});

  List<GridgoodluckItemModel> gridgoodluckItemList;

  TrialMoneyMainAfterParticipatingModel copyWith({
    List<GridgoodluckItemModel>? gridgoodluckItemList,
  }) {
    return TrialMoneyMainAfterParticipatingModel(
      gridgoodluckItemList: gridgoodluckItemList ?? this.gridgoodluckItemList,
    );
  }

  @override
  List<Object?> get props => [gridgoodluckItemList];
}
