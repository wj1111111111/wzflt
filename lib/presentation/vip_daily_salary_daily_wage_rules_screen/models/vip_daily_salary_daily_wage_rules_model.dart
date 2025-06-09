import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridslot_one_item_model.dart';
import 'listlv1_one_item_model.dart';

/// This class defines the variables used in the [vip_daily_salary_daily_wage_rules_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class VipDailySalaryDailyWageRulesModel extends Equatable {
  VipDailySalaryDailyWageRulesModel({
    this.listlv1OneItemList = const [],
    this.gridslotOneItemList = const [],
  });

  List<Listlv1OneItemModel> listlv1OneItemList;

  List<GridslotOneItemModel> gridslotOneItemList;

  VipDailySalaryDailyWageRulesModel copyWith({
    List<Listlv1OneItemModel>? listlv1OneItemList,
    List<GridslotOneItemModel>? gridslotOneItemList,
  }) {
    return VipDailySalaryDailyWageRulesModel(
      listlv1OneItemList: listlv1OneItemList ?? this.listlv1OneItemList,
      gridslotOneItemList: gridslotOneItemList ?? this.gridslotOneItemList,
    );
  }

  @override
  List<Object?> get props => [listlv1OneItemList, gridslotOneItemList];
}
