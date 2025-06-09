import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/level_bonus_claimed_model.dart';
import '../models/listfour_one_item_model.dart';
import '../models/listlv1_one_item_model.dart';
import '../models/listvip_one_item_model.dart';
part 'level_bonus_claimed_event.dart';
part 'level_bonus_claimed_state.dart';

/// A bloc that manages the state of a LevelBonusClaimed according to the event that is dispatched to it.
class LevelBonusClaimedBloc
    extends Bloc<LevelBonusClaimedEvent, LevelBonusClaimedState> {
  LevelBonusClaimedBloc(LevelBonusClaimedState initialState)
    : super(initialState) {
    on<LevelBonusClaimedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LevelBonusClaimedInitialEvent event,
    Emitter<LevelBonusClaimedState> emit,
  ) async {
    emit(
      state.copyWith(
        levelBonusClaimedModelObj: state.levelBonusClaimedModelObj?.copyWith(
          listlv1OneItemList: fillListlv1OneItemList(),
          listfourOneItemList: fillListfourOneItemList(),
          listvipOneItemList: fillListvipOneItemList(),
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

  List<ListfourOneItemModel> fillListfourOneItemList() {
    return [
      ListfourOneItemModel(
        image: ImageConstant.img6,
        closeOne: ImageConstant.imgCloseOnprimary,
      ),
      ListfourOneItemModel(
        image: ImageConstant.img7,
        closeOne: ImageConstant.imgCloseOnprimary,
      ),
      ListfourOneItemModel(closeOne: ImageConstant.img896611),
    ];
  }

  List<ListvipOneItemModel> fillListvipOneItemList() {
    return [
      ListvipOneItemModel(
        vipTwo: "lbl_vip2".tr,
        four: "lbl_4".tr,
        upgradebonus: "lbl_upgrade_bonus2".tr,
        price: "lbl_18888".tr,
      ),
      ListvipOneItemModel(),
      ListvipOneItemModel(),
    ];
  }
}
