import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridregistratio_item_model.dart';
import 'listinvite_one_item_model.dart';
import 'slidermybenefit_item_model.dart';

/// This class defines the variables used in the [referral_level_2_intermediate_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ReferralLevel2IntermediateModel extends Equatable {
  ReferralLevel2IntermediateModel({
    this.listinviteOneItemList = const [],
    this.slidermybenefitItemList = const [],
    this.gridregistratioItemList = const [],
  });

  List<ListinviteOneItemModel> listinviteOneItemList;

  List<SlidermybenefitItemModel> slidermybenefitItemList;

  List<GridregistratioItemModel> gridregistratioItemList;

  ReferralLevel2IntermediateModel copyWith({
    List<ListinviteOneItemModel>? listinviteOneItemList,
    List<SlidermybenefitItemModel>? slidermybenefitItemList,
    List<GridregistratioItemModel>? gridregistratioItemList,
  }) {
    return ReferralLevel2IntermediateModel(
      listinviteOneItemList:
          listinviteOneItemList ?? this.listinviteOneItemList,
      slidermybenefitItemList:
          slidermybenefitItemList ?? this.slidermybenefitItemList,
      gridregistratioItemList:
          gridregistratioItemList ?? this.gridregistratioItemList,
    );
  }

  @override
  List<Object?> get props => [
    listinviteOneItemList,
    slidermybenefitItemList,
    gridregistratioItemList,
  ];
}
