import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listhot_one_item_model.dart';

/// This class defines the variables used in the [coupon_system_condition_display_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class CouponSystemConditionDisplayModel extends Equatable {
  CouponSystemConditionDisplayModel({this.listhotOneItemList = const []});

  List<ListhotOneItemModel> listhotOneItemList;

  CouponSystemConditionDisplayModel copyWith({
    List<ListhotOneItemModel>? listhotOneItemList,
  }) {
    return CouponSystemConditionDisplayModel(
      listhotOneItemList: listhotOneItemList ?? this.listhotOneItemList,
    );
  }

  @override
  List<Object?> get props => [listhotOneItemList];
}
