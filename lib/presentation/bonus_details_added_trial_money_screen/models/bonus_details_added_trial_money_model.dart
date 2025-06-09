import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listdeposit_item_model.dart';

/// This class defines the variables used in the [bonus_details_added_trial_money_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class BonusDetailsAddedTrialMoneyModel extends Equatable {
  BonusDetailsAddedTrialMoneyModel({this.listdepositItemList = const []});

  List<ListdepositItemModel> listdepositItemList;

  BonusDetailsAddedTrialMoneyModel copyWith({
    List<ListdepositItemModel>? listdepositItemList,
  }) {
    return BonusDetailsAddedTrialMoneyModel(
      listdepositItemList: listdepositItemList ?? this.listdepositItemList,
    );
  }

  @override
  List<Object?> get props => [listdepositItemList];
}
