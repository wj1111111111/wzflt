import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/expandablelistc_item_model.dart';
import '../models/listgroup1248_item_model.dart';
import '../models/listlv1_one_item_model.dart';
import '../models/listlv6_one_item_model.dart';
import '../models/vip_daily_wage_model.dart';
part 'vip_daily_wage_event.dart';
part 'vip_daily_wage_state.dart';

/// A bloc that manages the state of a VipDailyWage according to the event that is dispatched to it.
class VipDailyWageBloc extends Bloc<VipDailyWageEvent, VipDailyWageState> {
  VipDailyWageBloc(VipDailyWageState initialState) : super(initialState) {
    on<VipDailyWageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VipDailyWageInitialEvent event,
    Emitter<VipDailyWageState> emit,
  ) async {
    emit(
      state.copyWith(
        vipDailyWageModelObj: state.vipDailyWageModelObj?.copyWith(
          listlv6OneItemList: fillListlv6OneItemList(),
          listlv1OneItemList: fillListlv1OneItemList(),
          listgroup1248ItemList: fillListgroup1248ItemList(),
        ),
      ),
    );
  }

  List<Listlv6OneItemModel> fillListlv6OneItemList() {
    return [
      Listlv6OneItemModel(
        lv6One: ImageConstant.imgIconVip6,
        lvsix: "lbl_lv_6".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv6OneItemModel(
        lv6One: ImageConstant.imgIconVip7,
        lvsix: "lbl_lv_7".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv6OneItemModel(
        lv6One: ImageConstant.imgIconVip8,
        lvsix: "lbl_lv_8".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv6OneItemModel(
        lv6One: ImageConstant.imgIconVip9,
        lvsix: "lbl_lv_9".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv6OneItemModel(
        lv6One: ImageConstant.imgIconVip10,
        lvsix: "lbl_lv_10".tr,
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
    ];
  }

  List<Listgroup1248ItemModel> fillListgroup1248ItemList() {
    return [
      Listgroup1248ItemModel(
        image: ImageConstant.img3,
        imageOne: ImageConstant.img74x344,
        imageTwo: ImageConstant.imgCloseOnprimary42x50,
        group1248: "lbl_12".tr,
      ),
      Listgroup1248ItemModel(
        image: ImageConstant.img4,
        imageOne: ImageConstant.img72x344,
      ),
      Listgroup1248ItemModel(
        image: ImageConstant.img4,
        imageOne: ImageConstant.img5,
      ),
      Listgroup1248ItemModel(image: ImageConstant.img4),
    ];
  }
}
