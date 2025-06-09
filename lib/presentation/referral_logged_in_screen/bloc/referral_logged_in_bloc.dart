import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gridregistratio_item_model.dart';
import '../models/list1306520_item_model.dart';
import '../models/listjunioragent_item_model.dart';
import '../models/listone_item_model.dart';
import '../models/listregistratio_item_model.dart';
import '../models/referral_logged_in_model.dart';
import '../models/slidermyagentti_item_model.dart';
part 'referral_logged_in_event.dart';
part 'referral_logged_in_state.dart';

/// A bloc that manages the state of a ReferralLoggedIn according to the event that is dispatched to it.
class ReferralLoggedInBloc
    extends Bloc<ReferralLoggedInEvent, ReferralLoggedInState> {
  ReferralLoggedInBloc(ReferralLoggedInState initialState)
    : super(initialState) {
    on<ReferralLoggedInInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
  }

  _onInitialize(
    ReferralLoggedInInitialEvent event,
    Emitter<ReferralLoggedInState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(
      state.copyWith(
        referralLoggedInModelObj: state.referralLoggedInModelObj?.copyWith(
          list1306520ItemList: fillList1306520ItemList(),
          listregistratioItemList: fillListregistratioItemList(),
          listjunioragentItemList: fillListjunioragentItemList(),
          listoneItemList: fillListoneItemList(),
          gridregistratioItemList: fillGridregistratioItemList(),
          slidermyagenttiItemList: fillSlidermyagenttiItemList(),
        ),
      ),
    );
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<ReferralLoggedInState> emit,
  ) {
    emit(state.copyWith(sliderIndex: event.value));
  }

  List<List1306520ItemModel> fillList1306520ItemList() {
    return [
      List1306520ItemModel(
        oneMillionThreeHundredSixThousandFiveHundredTwenty: "lbl_130_6520".tr,
        getan: "msg_get_an_regisiration_bonus".tr,
        price: "lbl_188_002".tr,
      ),
      List1306520ItemModel(
        oneMillionThreeHundredSixThousandFiveHundredTwenty: "lbl_130_6520".tr,
        getan: "msg_get_an_regisiration_bonus".tr,
        price: "lbl_188_002".tr,
      ),
      List1306520ItemModel(
        oneMillionThreeHundredSixThousandFiveHundredTwenty: "lbl_130_6520".tr,
        getan: "msg_get_an_regisiration_bonus".tr,
        price: "lbl_188_002".tr,
      ),
      List1306520ItemModel(
        oneMillionThreeHundredSixThousandFiveHundredTwenty: "lbl_130_6520".tr,
        getan: "msg_get_an_regisiration_bonus".tr,
        price: "lbl_188_002".tr,
      ),
    ];
  }

  List<ListregistratioItemModel> fillListregistratioItemList() {
    return [
      ListregistratioItemModel(
        registration: ImageConstant.imgInvitationRewards,
        registration1: "msg_registration_bonus".tr,
        price: "msg_353_598_912_00".tr,
        claimedCounter: "lbl_276444_claimed".tr,
      ),
      ListregistratioItemModel(
        registration: ImageConstant.imgImage887,
        registration1: "lbl_deposit_bonus".tr,
        price: "msg_482_667_165_63".tr,
        claimedCounter: "lbl_383064_claimed".tr,
      ),
      ListregistratioItemModel(
        registration: ImageConstant.imgImage886,
        registration1: "msg_achievement_rewards".tr,
        price: "msg_240_229_008_00".tr,
        claimedCounter: "lbl_162852_claimed".tr,
      ),
      ListregistratioItemModel(
        registration: ImageConstant.imgBettingRebate1,
        registration1: "lbl_betting_rebate".tr,
        price: "msg_482_667_165_63".tr,
        claimedCounter: "lbl_452052_claimed".tr,
      ),
      ListregistratioItemModel(
        registration1: "lbl_qualified_bonus".tr,
        price: "msg_482_667_165_63".tr,
        claimedCounter: "lbl_383064_claimed".tr,
      ),
      ListregistratioItemModel(
        registration1: "lbl_deposit_rebate".tr,
        price: "msg_482_667_165_63".tr,
        claimedCounter: "lbl_383064_claimed".tr,
      ),
    ];
  }

  List<ListjunioragentItemModel> fillListjunioragentItemList() {
    return [
      ListjunioragentItemModel(
        junioragenti: "lbl_junior_agent_i".tr,
        seven: "lbl_0_7".tr,
        tf: "lbl5".tr,
        one: "lbl5".tr,
        two: "lbl5".tr,
      ),
      ListjunioragentItemModel(junioragenti: "msg_intermediate_agent".tr),
      ListjunioragentItemModel(junioragenti: "lbl_senior_agent_i".tr),
      ListjunioragentItemModel(junioragenti: "lbl_master_agent_i".tr),
      ListjunioragentItemModel(junioragenti: "lbl_master_agent_ii".tr),
      ListjunioragentItemModel(junioragenti: "msg_master_agent_iii".tr),
    ];
  }

  List<ListoneItemModel> fillListoneItemList() {
    return [
      ListoneItemModel(one: "lbl_12".tr),
      ListoneItemModel(one: "lbl_22".tr),
      ListoneItemModel(one: "lbl_4".tr),
      ListoneItemModel(one: "lbl_52".tr),
      ListoneItemModel(one: "lbl_6".tr),
      ListoneItemModel(one: "lbl_7".tr),
      ListoneItemModel(),
    ];
  }

  List<GridregistratioItemModel> fillGridregistratioItemList() {
    return [
      GridregistratioItemModel(
        registration: "msg_registration_bonus".tr,
        price: "lbl_7_550_00".tr,
      ),
      GridregistratioItemModel(
        registration: "msg_deposit_rebate_bonus".tr,
        price: "lbl_200_000_00".tr,
      ),
      GridregistratioItemModel(
        registration: "msg_agent_ranking_bonus".tr,
        price: "lbl_100_000_00".tr,
      ),
      GridregistratioItemModel(),
      GridregistratioItemModel(),
      GridregistratioItemModel(),
      GridregistratioItemModel(),
    ];
  }

  List<SlidermyagenttiItemModel> fillSlidermyagenttiItemList() {
    return [
      SlidermyagenttiItemModel(
        myagenttier: "lbl_my_agent_tier".tr,
        juniorAgentI: "lbl_junior_agent_i".tr,
        teamcount: "lbl_team_count".tr,
        ten: "lbl_5_10".tr,
        teambetting: "lbl_team_betting".tr,
        tf: "lbl_550_00_10000".tr,
        mybenefits: "lbl_my_benefits".tr,
      ),
    ];
  }
}
