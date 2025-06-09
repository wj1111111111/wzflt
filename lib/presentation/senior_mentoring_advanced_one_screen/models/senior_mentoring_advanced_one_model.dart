import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridregistratio_item_model.dart';
import 'listinvite_one_item_model.dart';
import 'slidermybenefit_item_model.dart';

/// This class defines the variables used in the [senior_mentoring_advanced_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SeniorMentoringAdvancedOneModel extends Equatable {
  SeniorMentoringAdvancedOneModel({
    this.listinviteOneItemList = const [],
    this.slidermybenefitItemList = const [],
    this.gridregistratioItemList = const [],
  });

  List<ListinviteOneItemModel> listinviteOneItemList;

  List<SlidermybenefitItemModel> slidermybenefitItemList;

  List<GridregistratioItemModel> gridregistratioItemList;

  SeniorMentoringAdvancedOneModel copyWith({
    List<ListinviteOneItemModel>? listinviteOneItemList,
    List<SlidermybenefitItemModel>? slidermybenefitItemList,
    List<GridregistratioItemModel>? gridregistratioItemList,
  }) {
    return SeniorMentoringAdvancedOneModel(
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
