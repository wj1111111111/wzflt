import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listlv1_one_item_model.dart';
import '../models/listthree_one_item_model.dart';
import '../models/weekly_rebate_eligible_model.dart';
part 'weekly_rebate_eligible_event.dart';
part 'weekly_rebate_eligible_state.dart';

/// A bloc that manages the state of a WeeklyRebateEligible according to the event that is dispatched to it.
class WeeklyRebateEligibleBloc
    extends Bloc<WeeklyRebateEligibleEvent, WeeklyRebateEligibleState> {
  WeeklyRebateEligibleBloc(WeeklyRebateEligibleState initialState)
    : super(initialState) {
    on<WeeklyRebateEligibleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WeeklyRebateEligibleInitialEvent event,
    Emitter<WeeklyRebateEligibleState> emit,
  ) async {
    emit(
      state.copyWith(
        weeklyRebateEligibleModelObj: state.weeklyRebateEligibleModelObj
            ?.copyWith(
              listlv1OneItemList: fillListlv1OneItemList(),
              listthreeOneItemList: fillListthreeOneItemList(),
            ),
      ),
    );
  }

  List<Listlv1OneItemModel> fillListlv1OneItemList() {
    return [
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip1,
        lvone: "lbl_lv_12".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_5002".tr,
        fivehundredOne: "lbl_5002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip2,
        lvone: "lbl_lv_22".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip3,
        lvone: "lbl_lv_32".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_5002".tr,
        fivehundredOne: "lbl_5002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip4,
        lvone: "lbl_lv_42".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip5,
        lvone: "lbl_lv_5".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip6,
        lvone: "lbl_lv_6".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip7,
        lvone: "lbl_lv_7".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip8,
        lvone: "lbl_lv_8".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip9,
        lvone: "lbl_lv_9".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip10,
        lvone: "lbl_lv_10".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
    ];
  }

  List<ListthreeOneItemModel> fillListthreeOneItemList() {
    return [
      ListthreeOneItemModel(
        threeOne: ImageConstant.img3,
        image: ImageConstant.img74x344,
        closeOne: ImageConstant.imgCloseOnprimary,
      ),
      ListthreeOneItemModel(
        threeOne: ImageConstant.img4,
        image: ImageConstant.img6,
        closeOne: ImageConstant.imgCloseOnprimary,
      ),
      ListthreeOneItemModel(
        threeOne: ImageConstant.img4,
        image: ImageConstant.img7,
        closeOne: ImageConstant.imgCloseOnprimary,
      ),
      ListthreeOneItemModel(
        threeOne: ImageConstant.img4,
        closeOne: ImageConstant.img896611,
      ),
    ];
  }
}
