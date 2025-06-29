import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listbettingreco_item_model.dart';
import 'listinvite_one_item_model.dart';

/// This class defines the variables used in the [personal_center_claimed_bonus_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class PersonalCenterClaimedBonusModel extends Equatable {
  PersonalCenterClaimedBonusModel({
    this.listbettingrecoItemList = const [],
    this.listinviteOneItemList = const [],
  });

  List<ListbettingrecoItemModel> listbettingrecoItemList;

  List<ListinviteOneItemModel> listinviteOneItemList;

  PersonalCenterClaimedBonusModel copyWith({
    List<ListbettingrecoItemModel>? listbettingrecoItemList,
    List<ListinviteOneItemModel>? listinviteOneItemList,
  }) {
    return PersonalCenterClaimedBonusModel(
      listbettingrecoItemList:
          listbettingrecoItemList ?? this.listbettingrecoItemList,
      listinviteOneItemList:
          listinviteOneItemList ?? this.listinviteOneItemList,
    );
  }

  @override
  List<Object?> get props => [listbettingrecoItemList, listinviteOneItemList];
}
