import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/coupon_center_my_vouchers_model.dart';
import '../models/listred_package_item_model.dart';
part 'coupon_center_my_vouchers_event.dart';
part 'coupon_center_my_vouchers_state.dart';

/// A bloc that manages the state of a CouponCenterMyVouchers according to the event that is dispatched to it.
class CouponCenterMyVouchersBloc
    extends Bloc<CouponCenterMyVouchersEvent, CouponCenterMyVouchersState> {
  CouponCenterMyVouchersBloc(CouponCenterMyVouchersState initialState)
    : super(initialState) {
    on<CouponCenterMyVouchersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponCenterMyVouchersInitialEvent event,
    Emitter<CouponCenterMyVouchersState> emit,
  ) async {
    emit(
      state.copyWith(
        couponCenterMyVouchersModelObj: state.couponCenterMyVouchersModelObj
            ?.copyWith(listredPackageItemList: fillListredPackageItemList()),
      ),
    );
  }

  List<ListredPackageItemModel> fillListredPackageItemList() {
    return [
      ListredPackageItemModel(
        redPackageOne: ImageConstant.imgGroup14397,
        redPackage: ImageConstant.imgSettings44x44,
        firstdeposit: "lbl_red_package2".tr,
        completeyour: "lbl_2024_06_30".tr,
        firstdeposit1: "lbl_reward".tr,
        firstdeposit2: "lbl_due_date".tr,
        firstdeposit3: "lbl_0".tr,
        firstdeposit4: "lbl_day".tr,
        time: "lbl_23_36_58".tr,
      ),
      ListredPackageItemModel(
        redPackageOne: ImageConstant.imgGroup14397,
        firstdeposit2: "lbl_due_date".tr,
        firstdeposit3: "lbl_0".tr,
        firstdeposit4: "lbl_day".tr,
        time: "lbl_23_36_58".tr,
      ),
      ListredPackageItemModel(
        firstdeposit2: "lbl_due_date".tr,
        firstdeposit3: "lbl_0".tr,
        firstdeposit4: "lbl_day".tr,
        time: "lbl_20_30_50".tr,
      ),
      ListredPackageItemModel(
        firstdeposit2: "lbl_due_date".tr,
        firstdeposit3: "lbl_0".tr,
        firstdeposit4: "lbl_day".tr,
        time: "lbl_23_36_58".tr,
      ),
      ListredPackageItemModel(
        firstdeposit2: "lbl_due_date".tr,
        firstdeposit3: "lbl_0".tr,
        firstdeposit4: "lbl_day".tr,
        time: "lbl_23_36_58".tr,
      ),
      ListredPackageItemModel(),
    ];
  }
}
