import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'listfirstdeposi_item_model.dart';

/// This class defines the variables used in the [coupon_center_task_records_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class CouponCenterTaskRecordsModel extends Equatable {
  CouponCenterTaskRecordsModel({
    this.dropdownItemList = const [],
    this.listfirstdeposiItemList = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<ListfirstdeposiItemModel> listfirstdeposiItemList;

  CouponCenterTaskRecordsModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ListfirstdeposiItemModel>? listfirstdeposiItemList,
  }) {
    return CouponCenterTaskRecordsModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listfirstdeposiItemList:
          listfirstdeposiItemList ?? this.listfirstdeposiItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, listfirstdeposiItemList];
}
