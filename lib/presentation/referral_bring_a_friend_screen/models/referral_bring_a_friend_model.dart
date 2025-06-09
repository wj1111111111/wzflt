import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridqualifiedbo_item_model.dart';

/// This class defines the variables used in the [referral_bring_a_friend_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ReferralBringAFriendModel extends Equatable {
  ReferralBringAFriendModel({this.gridqualifiedboItemList = const []});

  List<GridqualifiedboItemModel> gridqualifiedboItemList;

  ReferralBringAFriendModel copyWith({
    List<GridqualifiedboItemModel>? gridqualifiedboItemList,
  }) {
    return ReferralBringAFriendModel(
      gridqualifiedboItemList:
          gridqualifiedboItemList ?? this.gridqualifiedboItemList,
    );
  }

  @override
  List<Object?> get props => [gridqualifiedboItemList];
}
