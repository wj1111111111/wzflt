import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listinvite_one_item_model.dart';

/// This class defines the variables used in the [achievement_rewards_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class AchievementRewardsModel extends Equatable {
  AchievementRewardsModel({this.listinviteOneItemList = const []});

  List<ListinviteOneItemModel> listinviteOneItemList;

  AchievementRewardsModel copyWith({
    List<ListinviteOneItemModel>? listinviteOneItemList,
  }) {
    return AchievementRewardsModel(
      listinviteOneItemList:
          listinviteOneItemList ?? this.listinviteOneItemList,
    );
  }

  @override
  List<Object?> get props => [listinviteOneItemList];
}
