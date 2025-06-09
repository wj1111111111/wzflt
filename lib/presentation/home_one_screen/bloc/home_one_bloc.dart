import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_one_item_model.dart';
import '../models/home_one_model.dart';
part 'home_one_event.dart';
part 'home_one_state.dart';

/// A bloc that manages the state of a HomeOne according to the event that is dispatched to it.
class HomeOneBloc extends Bloc<HomeOneEvent, HomeOneState> {
  HomeOneBloc(HomeOneState initialState) : super(initialState) {
    on<HomeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(HomeOneInitialEvent event, Emitter<HomeOneState> emit) async {
    emit(
      state.copyWith(
        homeOneModelObj: state.homeOneModelObj?.copyWith(
          homeOneItemList: fillHomeOneItemList(),
        ),
      ),
    );
  }

  List<HomeOneItemModel> fillHomeOneItemList() {
    return [
      HomeOneItemModel(
        fortuneOx: ImageConstant.img231000,
        televisionOne: ImageConstant.imgTelevisionYellowA70003,
        fortuneox1: "msg_fortune_ox_fortune".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img491000,
        fortuneox1: "lbl_super_ace".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img102X1000,
        fortuneox1: "lbl_roma_x".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img211000,
        fortuneox1: "lbl_diamond_party".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img911000,
        fortuneox1: "lbl_lucky_coming".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img277771000,
        televisionOne: ImageConstant.imgTelevisionAmberA40003,
        fortuneox1: "lbl_roma_x".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img431000,
        televisionOne: ImageConstant.imgTelevisionAmberA40003,
        fortuneox1: "lbl_diamond_party".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img441000,
        televisionOne: ImageConstant.imgTelevisionAmberA40003,
        fortuneox1: "lbl_lucky_coming".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img471000,
        televisionOne: ImageConstant.imgFrame1003,
        fortuneox1: "lbl_roma_x".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img461000,
        televisionOne: ImageConstant.imgFrame1003,
        fortuneox1: "lbl_diamond_party".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.imgJdbSlot092,
        televisionOne: ImageConstant.imgFrame1003,
        fortuneox1: "lbl_lucky_coming".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img771000,
        televisionOne: ImageConstant.imgFrame1003,
        fortuneox1: "lbl_roma_x".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img401000,
        televisionOne: ImageConstant.imgFrame1003,
        fortuneox1: "lbl_diamond_party".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img851000,
        televisionOne: ImageConstant.imgCloseAmberA700,
        fortuneox1: "lbl_roma_x".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img357771000,
        televisionOne: ImageConstant.imgCloseAmberA700,
        fortuneox1: "lbl_diamond_party".tr,
      ),
      HomeOneItemModel(
        fortuneOx: ImageConstant.img451000,
        televisionOne: ImageConstant.imgCloseAmberA700,
        fortuneox1: "lbl_lucky_coming".tr,
      ),
      HomeOneItemModel(
        televisionOne: ImageConstant.imgLogoWj93120x56,
        fortuneox1: "lbl_money_coming".tr,
      ),
      HomeOneItemModel(fortuneox1: "lbl_slot".tr),
      HomeOneItemModel(fortuneox1: "lbl_live".tr),
      HomeOneItemModel(fortuneox1: "lbl_bingo2".tr),
      HomeOneItemModel(fortuneox1: "lbl_table".tr),
      HomeOneItemModel(fortuneox1: "lbl_fish2".tr),
      HomeOneItemModel(fortuneox1: "lbl_egame".tr),
      HomeOneItemModel(fortuneox1: "lbl_sport".tr),
      HomeOneItemModel(),
      HomeOneItemModel(),
      HomeOneItemModel(),
      HomeOneItemModel(),
    ];
  }
}
