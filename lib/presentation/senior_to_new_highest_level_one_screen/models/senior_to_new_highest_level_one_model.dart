import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listinvite_one_item_model.dart';
import 'listjunior_item_model.dart';
import 'listregistratio_item_model.dart';
import 'slidermybenefit_item_model.dart';

/// This class defines the variables used in the [senior_to_new_highest_level_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SeniorToNewHighestLevelOneModel extends Equatable {
  SeniorToNewHighestLevelOneModel({
    this.listinviteOneItemList = const [],
    this.slidermybenefitItemList = const [],
    this.listregistratioItemList = const [],
    this.listjuniorItemList = const [],
  });

  List<ListinviteOneItemModel> listinviteOneItemList;

  List<SlidermybenefitItemModel> slidermybenefitItemList;

  List<ListregistratioItemModel> listregistratioItemList;

  List<ListjuniorItemModel> listjuniorItemList;

  SeniorToNewHighestLevelOneModel copyWith({
    List<ListinviteOneItemModel>? listinviteOneItemList,
    List<SlidermybenefitItemModel>? slidermybenefitItemList,
    List<ListregistratioItemModel>? listregistratioItemList,
    List<ListjuniorItemModel>? listjuniorItemList,
  }) {
    return SeniorToNewHighestLevelOneModel(
      listinviteOneItemList:
          listinviteOneItemList ?? this.listinviteOneItemList,
      slidermybenefitItemList:
          slidermybenefitItemList ?? this.slidermybenefitItemList,
      listregistratioItemList:
          listregistratioItemList ?? this.listregistratioItemList,
      listjuniorItemList: listjuniorItemList ?? this.listjuniorItemList,
    );
  }

  @override
  List<Object?> get props => [
    listinviteOneItemList,
    slidermybenefitItemList,
    listregistratioItemList,
    listjuniorItemList,
  ];
}
