import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listmore_one_item_model.dart';

/// This class defines the variables used in the [achievement_rewards_invitation_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class AchievementRewardsInvitationModel extends Equatable {
  AchievementRewardsInvitationModel({this.listmoreOneItemList = const []});

  List<ListmoreOneItemModel> listmoreOneItemList;

  AchievementRewardsInvitationModel copyWith({
    List<ListmoreOneItemModel>? listmoreOneItemList,
  }) {
    return AchievementRewardsInvitationModel(
      listmoreOneItemList: listmoreOneItemList ?? this.listmoreOneItemList,
    );
  }

  @override
  List<Object?> get props => [listmoreOneItemList];
}
