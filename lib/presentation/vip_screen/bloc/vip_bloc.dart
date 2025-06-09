import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listgroup1248_item_model.dart';
import '../models/listlv1_one_item_model.dart';
import '../models/vip_model.dart';
part 'vip_event.dart';
part 'vip_state.dart';

/// A bloc that manages the state of a Vip according to the event that is dispatched to it.
class VipBloc extends Bloc<VipEvent, VipState> {
  VipBloc(VipState initialState) : super(initialState) {
    on<VipInitialEvent>(_onInitialize);
  }

  _onInitialize(VipInitialEvent event, Emitter<VipState> emit) async {
    emit(
      state.copyWith(
        vipModelObj: state.vipModelObj?.copyWith(
          listlv1OneItemList: fillListlv1OneItemList(),
          listgroup1248ItemList: fillListgroup1248ItemList(),
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

  List<Listgroup1248ItemModel> fillListgroup1248ItemList() {
    return [
      Listgroup1248ItemModel(
        image: ImageConstant.img3,
        imageOne: ImageConstant.img74x344,
        imageTwo: ImageConstant.imgCloseOnprimary,
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
