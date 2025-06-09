import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_sms_popup_item_model.dart';
import '../models/home_sms_popup_model.dart';
part 'home_sms_popup_event.dart';
part 'home_sms_popup_state.dart';

/// A bloc that manages the state of a HomeSmsPopup according to the event that is dispatched to it.
class HomeSmsPopupBloc extends Bloc<HomeSmsPopupEvent, HomeSmsPopupState> {
  HomeSmsPopupBloc(HomeSmsPopupState initialState) : super(initialState) {
    on<HomeSmsPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeSmsPopupInitialEvent event,
    Emitter<HomeSmsPopupState> emit,
  ) async {
    emit(
      state.copyWith(
        homeSmsPopupModelObj: state.homeSmsPopupModelObj?.copyWith(
          homeSmsPopupItemList: fillHomeSmsPopupItemList(),
        ),
      ),
    );
  }

  List<HomeSmsPopupItemModel> fillHomeSmsPopupItemList() {
    return [
      HomeSmsPopupItemModel(
        fortuneOx: ImageConstant.img231000,
        televisionOne: ImageConstant.imgTelevisionYellowA70003,
        fortuneox1: "msg_fortune_ox_fortune".tr,
      ),
      HomeSmsPopupItemModel(
        fortuneOx: ImageConstant.img491000,
        fortuneox1: "lbl_super_ace".tr,
      ),
      HomeSmsPopupItemModel(
        fortuneOx: ImageConstant.img102X1000,
        fortuneox1: "lbl_roma_x".tr,
      ),
      HomeSmsPopupItemModel(
        fortuneOx: ImageConstant.img211000,
        fortuneox1: "lbl_diamond_party".tr,
      ),
      HomeSmsPopupItemModel(
        fortuneOx: ImageConstant.img911000,
        fortuneox1: "lbl_lucky_coming".tr,
      ),
      HomeSmsPopupItemModel(
        fortuneOx: ImageConstant.img277771000,
        televisionOne: ImageConstant.imgTelevisionAmberA40003,
        fortuneox1: "lbl_roma_x".tr,
      ),
      HomeSmsPopupItemModel(
        fortuneOx: ImageConstant.img431000,
        televisionOne: ImageConstant.imgTelevisionAmberA40003,
        fortuneox1: "lbl_diamond_party".tr,
      ),
      HomeSmsPopupItemModel(
        fortuneOx: ImageConstant.img441000,
        televisionOne: ImageConstant.imgTelevisionAmberA40003,
        fortuneox1: "lbl_lucky_coming".tr,
      ),
      HomeSmsPopupItemModel(
        televisionOne: ImageConstant.imgLogoWj93120x56,
        fortuneox1: "lbl_money_coming".tr,
      ),
      HomeSmsPopupItemModel(fortuneox1: "lbl_slot".tr),
      HomeSmsPopupItemModel(fortuneox1: "lbl_live".tr),
      HomeSmsPopupItemModel(fortuneox1: "lbl_bingo2".tr),
      HomeSmsPopupItemModel(fortuneox1: "lbl_table".tr),
      HomeSmsPopupItemModel(fortuneox1: "lbl_fish2".tr),
      HomeSmsPopupItemModel(fortuneox1: "lbl_egame".tr),
      HomeSmsPopupItemModel(),
      HomeSmsPopupItemModel(),
      HomeSmsPopupItemModel(),
      HomeSmsPopupItemModel(),
    ];
  }
}
