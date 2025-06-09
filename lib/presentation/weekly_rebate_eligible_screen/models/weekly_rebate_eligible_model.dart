import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listlv1_one_item_model.dart';
import 'listthree_one_item_model.dart';

/// This class defines the variables used in the [weekly_rebate_eligible_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WeeklyRebateEligibleModel extends Equatable {
  WeeklyRebateEligibleModel({
    this.listthreeOneItemList = const [],
    this.listlv1OneItemList = const [],
  });

  List<ListthreeOneItemModel> listthreeOneItemList;

  List<Listlv1OneItemModel> listlv1OneItemList;

  WeeklyRebateEligibleModel copyWith({
    List<ListthreeOneItemModel>? listthreeOneItemList,
    List<Listlv1OneItemModel>? listlv1OneItemList,
  }) {
    return WeeklyRebateEligibleModel(
      listthreeOneItemList: listthreeOneItemList ?? this.listthreeOneItemList,
      listlv1OneItemList: listlv1OneItemList ?? this.listlv1OneItemList,
    );
  }

  @override
  List<Object?> get props => [listthreeOneItemList, listlv1OneItemList];
}
