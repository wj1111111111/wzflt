import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/coupon_center_voucher_won_model.dart';
import '../models/couponcenter_tab_model.dart';
import '../models/listfirst_item_model.dart';
part 'coupon_center_voucher_won_event.dart';
part 'coupon_center_voucher_won_state.dart';

/// A bloc that manages the state of a CouponCenterVoucherWon according to the event that is dispatched to it.
class CouponCenterVoucherWonBloc
    extends Bloc<CouponCenterVoucherWonEvent, CouponCenterVoucherWonState> {
  CouponCenterVoucherWonBloc(CouponCenterVoucherWonState initialState)
    : super(initialState) {
    on<CouponCenterVoucherWonInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponCenterVoucherWonInitialEvent event,
    Emitter<CouponCenterVoucherWonState> emit,
  ) async {
    emit(
      state.copyWith(
        couponcenterTabModelObj: state.couponcenterTabModelObj?.copyWith(
          listfirstItemList: fillListfirstItemList(),
        ),
      ),
    );
  }

  List<ListfirstItemModel> fillListfirstItemList() {
    return [
      ListfirstItemModel(
        firstDeposit: ImageConstant.imgFrame14092,
        firstdeposit1: "lbl_first_deposit".tr,
      ),
      ListfirstItemModel(
        firstDeposit: ImageConstant.imgFrame14092,
        firstdeposit1: "msg_fixed_payment_method".tr,
      ),
      ListfirstItemModel(
        firstDeposit: ImageConstant.imgGroup14095,
        firstdeposit1: "lbl_sign_in2".tr,
      ),
      ListfirstItemModel(
        firstDeposit: ImageConstant.imgGroup14096,
        firstdeposit1: "lbl_vip_grade".tr,
      ),
      ListfirstItemModel(
        firstDeposit: ImageConstant.imgCloseGray9000240x40,
        firstdeposit1: "lbl_money_rain".tr,
      ),
      ListfirstItemModel(
        firstDeposit: ImageConstant.imgGroup14098,
        firstdeposit1: "msg_invite_registration".tr,
      ),
      ListfirstItemModel(
        firstDeposit: ImageConstant.imgGroup14098,
        firstdeposit1: "lbl_invite_deposit".tr,
      ),
      ListfirstItemModel(
        firstDeposit: ImageConstant.imgGroup14098,
        firstdeposit1: "msg_invitation_qualified2".tr,
      ),
      ListfirstItemModel(),
    ];
  }
}
