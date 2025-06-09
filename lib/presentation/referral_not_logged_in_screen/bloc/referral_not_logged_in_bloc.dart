import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list_item_model.dart';
import '../models/list_one_item_model.dart';
import '../models/list_two_item_model.dart';
import '../models/listjunior_item_model.dart';
import '../models/listprice_item_model.dart';
import '../models/listteamslevel_item_model.dart';
import '../models/referral_not_logged_in_model.dart';
part 'referral_not_logged_in_event.dart';
part 'referral_not_logged_in_state.dart';

/// A bloc that manages the state of a ReferralNotLoggedIn according to the event that is dispatched to it.
class ReferralNotLoggedInBloc
    extends Bloc<ReferralNotLoggedInEvent, ReferralNotLoggedInState> {
  ReferralNotLoggedInBloc(ReferralNotLoggedInState initialState)
    : super(initialState) {
    on<ReferralNotLoggedInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReferralNotLoggedInInitialEvent event,
    Emitter<ReferralNotLoggedInState> emit,
  ) async {
    emit(
      state.copyWith(
        junioragentiController: TextEditingController(),
        senioragentController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        referralNotLoggedInModelObj: state.referralNotLoggedInModelObj
            ?.copyWith(
              listTwoItemList: fillListTwoItemList(),
              listOneItemList: fillListOneItemList(),
              listItemList: fillListItemList(),
              listjuniorItemList: fillListjuniorItemList(),
              listteamslevelItemList: fillListteamslevelItemList(),
              listpriceItemList: fillListpriceItemList(),
            ),
      ),
    );
  }

  List<ListTwoItemModel> fillListTwoItemList() {
    return [
      ListTwoItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_2".tr,
        frameTwo: "lbl_0_1".tr,
        frameThree: "lbl5".tr,
      ),
      ListTwoItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_1".tr,
        frameTwo: "lbl5".tr,
        frameThree: "lbl5".tr,
      ),
      ListTwoItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl5".tr,
        frameTwo: "lbl5".tr,
        frameThree: "lbl5".tr,
      ),
      ListTwoItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_4".tr,
        frameTwo: "lbl_0_3".tr,
        frameThree: "lbl_0_2".tr,
      ),
      ListTwoItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_5".tr,
        frameTwo: "lbl_0_3".tr,
        frameThree: "lbl_0_2".tr,
      ),
      ListTwoItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_4".tr,
        frameTwo: "lbl_0_3".tr,
        frameThree: "lbl_0_2".tr,
      ),
      ListTwoItemModel(),
    ];
  }

  List<ListOneItemModel> fillListOneItemList() {
    return [
      ListOneItemModel(
        teamslevel: "lbl_teams_level".tr,
        agenttier: "lbl_agent_tier".tr,
        levelCounter: "lbl_level_1".tr,
        leveltwo: "lbl_level_2".tr,
        levelthree: "lbl_level_3".tr,
        levelfour: "lbl_level_4".tr,
      ),
      ListOneItemModel(),
      ListOneItemModel(),
      ListOneItemModel(),
      ListOneItemModel(),
      ListOneItemModel(),
      ListOneItemModel(),
    ];
  }

  List<ListItemModel> fillListItemList() {
    return [
      ListItemModel(
        teamslevel: "lbl_teams_level".tr,
        agenttier: "lbl_agent_tier".tr,
        levelCounter: "lbl_level_1".tr,
        leveltwo: "lbl_level_2".tr,
        levelthree: "lbl_level_3".tr,
        levelfour: "lbl_level_4".tr,
      ),
      ListItemModel(),
      ListItemModel(),
      ListItemModel(),
      ListItemModel(),
      ListItemModel(),
      ListItemModel(),
    ];
  }

  List<ListjuniorItemModel> fillListjuniorItemList() {
    return [
      ListjuniorItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_2".tr,
        frameTwo: "lbl_0_1".tr,
        frameThree: "lbl5".tr,
      ),
      ListjuniorItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_1".tr,
        frameTwo: "lbl5".tr,
        frameThree: "lbl5".tr,
      ),
      ListjuniorItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl5".tr,
        frameTwo: "lbl5".tr,
        frameThree: "lbl5".tr,
      ),
      ListjuniorItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_4".tr,
        frameTwo: "lbl_0_3".tr,
        frameThree: "lbl_0_2".tr,
      ),
      ListjuniorItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_5".tr,
        frameTwo: "lbl_0_3".tr,
        frameThree: "lbl_0_2".tr,
      ),
      ListjuniorItemModel(
        frame: "lbl_0_7".tr,
        frameOne: "lbl_0_4".tr,
        frameTwo: "lbl_0_3".tr,
        frameThree: "lbl_0_2".tr,
      ),
      ListjuniorItemModel(),
    ];
  }

  List<ListteamslevelItemModel> fillListteamslevelItemList() {
    return [
      ListteamslevelItemModel(
        teamslevel: "lbl_teams_level".tr,
        agenttier: "lbl_agent_tier".tr,
        levelCounter: "lbl_level_1".tr,
        leveltwo: "lbl_level_2".tr,
        levelthree: "lbl_level_3".tr,
        levelfour: "lbl_level_4".tr,
      ),
      ListteamslevelItemModel(),
      ListteamslevelItemModel(),
      ListteamslevelItemModel(),
      ListteamslevelItemModel(),
      ListteamslevelItemModel(),
      ListteamslevelItemModel(),
    ];
  }

  List<ListpriceItemModel> fillListpriceItemList() {
    return [
      ListpriceItemModel(
        price: "lbl_88_00".tr,
        image: ImageConstant.imgImage527,
        five: "lbl_52".tr,
        users: "lbl_users".tr,
        imageOne: ImageConstant.imgLockBlueGray400,
      ),
      ListpriceItemModel(
        price: "lbl_188_00".tr,
        image: ImageConstant.imgImage528,
        five: "lbl_users".tr,
        users: "lbl_10".tr,
        imageOne: ImageConstant.imgLockBlueGray400,
      ),
      ListpriceItemModel(price: "lbl_1888_00".tr),
      ListpriceItemModel(),
      ListpriceItemModel(),
    ];
  }
}
