import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listlv1_one_item_model.dart';
import '../models/listlv4_one_item_model.dart';
import '../models/weekly_wage_claimed_model.dart';
part 'weekly_wage_claimed_event.dart';
part 'weekly_wage_claimed_state.dart';

/// A bloc that manages the state of a WeeklyWageClaimed according to the event that is dispatched to it.
class WeeklyWageClaimedBloc
    extends Bloc<WeeklyWageClaimedEvent, WeeklyWageClaimedState> {
  WeeklyWageClaimedBloc(WeeklyWageClaimedState initialState)
    : super(initialState) {
    on<WeeklyWageClaimedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WeeklyWageClaimedInitialEvent event,
    Emitter<WeeklyWageClaimedState> emit,
  ) async {
    emit(
      state.copyWith(
        weeklyWageClaimedModelObj: state.weeklyWageClaimedModelObj?.copyWith(
          listlv4OneItemList: fillListlv4OneItemList(),
          listlv1OneItemList: fillListlv1OneItemList(),
        ),
      ),
    );
  }

  List<Listlv4OneItemModel> fillListlv4OneItemList() {
    return [
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip4,
        lvfour: "lbl_lv_42".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip5,
        lvfour: "lbl_lv_5".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip6,
        lvfour: "lbl_lv_6".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip7,
        lvfour: "lbl_lv_7".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip8,
        lvfour: "lbl_lv_8".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
    ];
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
    ];
  }
}
