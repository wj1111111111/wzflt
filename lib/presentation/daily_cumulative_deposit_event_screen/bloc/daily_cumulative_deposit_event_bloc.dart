import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/daily_cumulative_deposit_event_model.dart';
import '../models/staggerediconvi_item_model.dart';
part 'daily_cumulative_deposit_event_event.dart';
part 'daily_cumulative_deposit_event_state.dart';

/// A bloc that manages the state of a DailyCumulativeDepositEvent according to the event that is dispatched to it.
class DailyCumulativeDepositEventBloc
    extends
        Bloc<
          DailyCumulativeDepositEventEvent,
          DailyCumulativeDepositEventState
        > {
  DailyCumulativeDepositEventBloc(DailyCumulativeDepositEventState initialState)
    : super(initialState) {
    on<DailyCumulativeDepositEventInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DailyCumulativeDepositEventInitialEvent event,
    Emitter<DailyCumulativeDepositEventState> emit,
  ) async {
    emit(
      state.copyWith(
        dailyCumulativeDepositEventModelObj: state
            .dailyCumulativeDepositEventModelObj
            ?.copyWith(staggerediconviItemList: fillStaggerediconviItemList()),
      ),
    );
  }

  List<StaggerediconviItemModel> fillStaggerediconviItemList() {
    return [
      StaggerediconviItemModel(
        image245One: ImageConstant.imgImage244,
        iconviponeOne: ImageConstant.imgV10124x124,
        vipZero: "lbl_vip0".tr,
        price: "lbl_10_002".tr,
        max: "lbl_max".tr,
        cumulative: "msg_cumulative_deposit3".tr,
        getVar: "lbl_get2".tr,
        priceOne: "lbl_150".tr,
        priceTwo: "lbl_2_002".tr,
        priceThree: "lbl_250".tr,
        priceFour: "lbl_4_002".tr,
        priceFive: "lbl_5003".tr,
        priceSix: "lbl_6_00".tr,
      ),
      StaggerediconviItemModel(
        image245One: ImageConstant.imgImage246,
        iconviponeOne: ImageConstant.imgIconVip1,
        vipZero: "lbl_vip1".tr,
        price: "lbl_20_002".tr,
        max: "lbl_max".tr,
        cumulative: "msg_cumulative_deposit3".tr,
        getVar: "lbl_get2".tr,
        priceOne: "lbl_150".tr,
        priceTwo: "lbl_2_002".tr,
        priceThree: "lbl_250".tr,
        priceFour: "lbl_4_002".tr,
        priceFive: "lbl_5003".tr,
        priceSix: "lbl_6_00".tr,
      ),
      StaggerediconviItemModel(
        image245One: ImageConstant.imgImage248,
        iconviponeOne: ImageConstant.imgIconVip3,
        vipZero: "lbl_vip3".tr,
        price: "lbl_35_00".tr,
        max: "lbl_max".tr,
        cumulative: "msg_cumulative_deposit3".tr,
        getVar: "lbl_get2".tr,
        priceOne: "lbl_150".tr,
        priceTwo: "lbl_2_002".tr,
        priceThree: "lbl_250".tr,
        priceFour: "lbl_4_002".tr,
        priceFive: "lbl_5003".tr,
        priceSix: "lbl_6_00".tr,
      ),
      StaggerediconviItemModel(
        image245One: ImageConstant.imgImage244,
        iconviponeOne: ImageConstant.imgIconVip4,
        vipZero: "lbl_vip42".tr,
        price: "lbl_40_00".tr,
        max: "lbl_max".tr,
        cumulative: "msg_cumulative_deposit3".tr,
        getVar: "lbl_get2".tr,
        priceOne: "lbl_150".tr,
        priceTwo: "lbl_2_002".tr,
        priceThree: "lbl_250".tr,
        priceFour: "lbl_4_002".tr,
        priceFive: "lbl_5003".tr,
        priceSix: "lbl_6_00".tr,
      ),
      StaggerediconviItemModel(
        image245One: ImageConstant.imgImage247,
        cumulative: "msg_cumulative_deposit3".tr,
        getVar: "lbl_get2".tr,
        priceOne: "lbl_150".tr,
        priceTwo: "lbl_2_002".tr,
        priceThree: "lbl_250".tr,
        priceFour: "lbl_4_002".tr,
        priceFive: "lbl_5003".tr,
        priceSix: "lbl_6_00".tr,
      ),
      StaggerediconviItemModel(
        image245One: ImageConstant.imgImage244,
        cumulative: "msg_cumulative_deposit3".tr,
        getVar: "lbl_get2".tr,
        priceOne: "lbl_150".tr,
        priceTwo: "lbl_2_002".tr,
        priceThree: "lbl_250".tr,
        priceFour: "lbl_4_002".tr,
        priceFive: "lbl_5003".tr,
        priceSix: "lbl_6_00".tr,
      ),
      StaggerediconviItemModel(
        image245One: ImageConstant.imgImage246,
        iconviponeOne: ImageConstant.imgIconVip156x56,
        vipZero: "lbl_vip9".tr,
        price: "lbl_89_00".tr,
        max: "lbl_max".tr,
        cumulative: "msg_cumulative_deposit3".tr,
        getVar: "lbl_get2".tr,
        priceOne: "lbl_150".tr,
        priceTwo: "lbl_2_002".tr,
        priceThree: "lbl_250".tr,
        priceFour: "lbl_4_002".tr,
        priceFive: "lbl_5003".tr,
        priceSix: "lbl_6_00".tr,
      ),
      StaggerediconviItemModel(),
      StaggerediconviItemModel(),
      StaggerediconviItemModel(),
      StaggerediconviItemModel(),
    ];
  }
}
