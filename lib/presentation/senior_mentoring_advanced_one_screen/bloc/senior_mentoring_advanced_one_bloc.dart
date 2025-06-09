import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gridregistratio_item_model.dart';
import '../models/listinvite_one_item_model.dart';
import '../models/senior_mentoring_advanced_one_model.dart';
import '../models/slidermybenefit_item_model.dart';
part 'senior_mentoring_advanced_one_event.dart';
part 'senior_mentoring_advanced_one_state.dart';

/// A bloc that manages the state of a SeniorMentoringAdvancedOne according to the event that is dispatched to it.
class SeniorMentoringAdvancedOneBloc
    extends
        Bloc<SeniorMentoringAdvancedOneEvent, SeniorMentoringAdvancedOneState> {
  SeniorMentoringAdvancedOneBloc(SeniorMentoringAdvancedOneState initialState)
    : super(initialState) {
    on<SeniorMentoringAdvancedOneInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
  }

  _onInitialize(
    SeniorMentoringAdvancedOneInitialEvent event,
    Emitter<SeniorMentoringAdvancedOneState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(
      state.copyWith(
        seniorMentoringAdvancedOneModelObj: state
            .seniorMentoringAdvancedOneModelObj
            ?.copyWith(
              gridregistratioItemList: fillGridregistratioItemList(),
              slidermybenefitItemList: fillSlidermybenefitItemList(),
              listinviteOneItemList: fillListinviteOneItemList(),
            ),
      ),
    );
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<SeniorMentoringAdvancedOneState> emit,
  ) {
    emit(state.copyWith(sliderIndex: event.value));
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
    ];
  }

  List<SlidermybenefitItemModel> fillSlidermybenefitItemList() {
    return [SlidermybenefitItemModel(mybenefits: "lbl_my_benefits".tr)];
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
