import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listred_package_item_model.dart';

/// This class defines the variables used in the [coupon_center_my_vouchers_page],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class CouponCenterMyVouchersModel extends Equatable {
  CouponCenterMyVouchersModel({this.listredPackageItemList = const []});

  List<ListredPackageItemModel> listredPackageItemList;

  CouponCenterMyVouchersModel copyWith({
    List<ListredPackageItemModel>? listredPackageItemList,
  }) {
    return CouponCenterMyVouchersModel(
      listredPackageItemList:
          listredPackageItemList ?? this.listredPackageItemList,
    );
  }

  @override
  List<Object?> get props => [listredPackageItemList];
}
