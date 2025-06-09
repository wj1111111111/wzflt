import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listinvite_one_item_model.dart';
import '../models/listjunior_item_model.dart';
import '../models/listregistratio_item_model.dart';
import '../models/senior_to_new_highest_level_one_model.dart';
import '../models/slidermybenefit_item_model.dart';
part 'senior_to_new_highest_level_one_event.dart';
part 'senior_to_new_highest_level_one_state.dart';

/// A bloc that manages the state of a SeniorToNewHighestLevelOne according to the event that is dispatched to it.
class SeniorToNewHighestLevelOneBloc
    extends
        Bloc<SeniorToNewHighestLevelOneEvent, SeniorToNewHighestLevelOneState> {
  SeniorToNewHighestLevelOneBloc(SeniorToNewHighestLevelOneState initialState)
    : super(initialState) {
    on<SeniorToNewHighestLevelOneInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
  }

  _onInitialize(
    SeniorToNewHighestLevelOneInitialEvent event,
    Emitter<SeniorToNewHighestLevelOneState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(
      state.copyWith(
        seniorToNewHighestLevelOneModelObj: state
            .seniorToNewHighestLevelOneModelObj
            ?.copyWith(
              listjuniorItemList: fillListjuniorItemList(),
              listregistratioItemList: fillListregistratioItemList(),
              slidermybenefitItemList: fillSlidermybenefitItemList(),
              listinviteOneItemList: fillListinviteOneItemList(),
            ),
      ),
    );
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<SeniorToNewHighestLevelOneState> emit,
  ) {
    emit(state.copyWith(sliderIndex: event.value));
  }

  List<ListjuniorItemModel> fillListjuniorItemList() {
    return [
      ListjuniorItemModel(
        seven: "lbl_0_7".tr,
        tf: "lbl5".tr,
        one: "lbl5".tr,
        two: "lbl5".tr,
      ),
      ListjuniorItemModel(),
      ListjuniorItemModel(),
      ListjuniorItemModel(),
      ListjuniorItemModel(),
      ListjuniorItemModel(),
      ListjuniorItemModel(),
    ];
  }

  List<ListregistratioItemModel> fillListregistratioItemList() {
    return [
      ListregistratioItemModel(
        registration: "msg_registration_bonus".tr,
        price: "lbl_7_550_00".tr,
        priceOne: "lbl_1_000_000_00".tr,
        depositbonus: "lbl_deposit_bonus".tr,
      ),
      ListregistratioItemModel(
        registration: "msg_deposit_rebate_bonus".tr,
        price: "lbl_200_000_00".tr,
      ),
      ListregistratioItemModel(
        priceOne: "lbl_30_000_00".tr,
        depositbonus: "msg_achievement_bonus".tr,
      ),
    ];
  }

  List<SlidermybenefitItemModel> fillSlidermybenefitItemList() {
    return [
      SlidermybenefitItemModel(
        mybenefits: "lbl_my_benefits".tr,
        agenttier: "msg_agent_tier_requirements".tr,
      ),
    ];
  }

  List<ListinviteOneItemModel> fillListinviteOneItemList() {
    return [
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgSubtract,
        inviteTwo: "lbl_invite".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.img1Black900,
        inviteTwo: "lbl_achievement".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgFrame2131330279,
        inviteTwo: "lbl_ranking2".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgLockBlack900,
        inviteTwo: "lbl_teams".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.img1Black90020x18,
        inviteTwo: "lbl_incomes".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.img120x18,
        inviteTwo: "lbl_records".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgFrame1321314655,
        inviteTwo: "lbl_faq".tr,
      ),
    ];
  }
}
