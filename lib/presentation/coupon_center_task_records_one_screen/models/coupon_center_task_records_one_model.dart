import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [coupon_center_task_records_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class CouponCenterTaskRecordsOneModel extends Equatable {
  CouponCenterTaskRecordsOneModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  CouponCenterTaskRecordsOneModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
  }) {
    return CouponCenterTaskRecordsOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
