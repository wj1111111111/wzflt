import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/chipview898333_item_model.dart';
import '../models/listlevelcounte_item_model.dart';
import '../models/listtoday_item_model.dart';
import '../models/listtwo_item_model.dart';
import '../models/team_members_model.dart';
import '../models/team_tab_model.dart';
part 'team_members_event.dart';
part 'team_members_state.dart';

/// A bloc that manages the state of a TeamMembers according to the event that is dispatched to it.
class TeamMembersBloc extends Bloc<TeamMembersEvent, TeamMembersState> {
  TeamMembersBloc(TeamMembersState initialState) : super(initialState) {
    on<TeamMembersInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    TeamMembersInitialEvent event,
    Emitter<TeamMembersState> emit,
  ) async {
    emit(state.copyWith(dateRangeController: TextEditingController()));
    emit(
      state.copyWith(
        teamTabModelObj: state.teamTabModelObj?.copyWith(
          listtwoItemList: fillListtwoItemList(),
          listlevelcounteItemList: fillListlevelcounteItemList(),
          listtodayItemList: fillListtodayItemList(),
          dropdownItemList: fillDropdownItemList(),
        ),
      ),
    );
  }

  _updateChipView(UpdateChipViewEvent event, Emitter<TeamMembersState> emit) {
    List<ListtwoItemModel> newList = List<ListtwoItemModel>.from(
      state.teamTabModelObj!.listtwoItemList,
    );
    List<Chipview898333ItemModel> subList = List<Chipview898333ItemModel>.from(
      newList[event.index].chipview898333ItemList!,
    );
    subList[event.subIndex] = subList[event.subIndex].copyWith(
      isSelected: event.isSelected,
    );
    newList[event.index] = newList[event.index].copyWith(
      chipview898333ItemList: subList,
    );
    emit(
      state.copyWith(
        teamTabModelObj: state.teamTabModelObj?.copyWith(
          listtwoItemList: newList,
        ),
      ),
    );
  }

  List<ListtwoItemModel> fillListtwoItemList() {
    return [
      ListtwoItemModel(
        two: "lbl_new".tr,
        registration: "msg_registration_date".tr,
        ninetee: "msg_2023_09_02_19_00_00".tr,
        depositamount: "lbl_deposit_amount2".tr,
        threeMillionFortyNineThousandNineHundredNine: "lbl_3_049_909".tr,
        validbet: "lbl_valid_bet".tr,
        one: "lbl_3_049_909".tr,
        withdrawal: "msg_withdrawal_amount".tr,
        two1: "lbl_3_049_909".tr,
        phone: "msg_phone_verification2".tr,
        verified: "lbl_verified".tr,
      ),
      ListtwoItemModel(),
      ListtwoItemModel(),
    ];
  }

  List<ListlevelcounteItemModel> fillListlevelcounteItemList() {
    return [
      ListlevelcounteItemModel(
        levelCounter: "lbl_level_22".tr,
        twenty: "lbl_20".tr,
      ),
      ListlevelcounteItemModel(twenty: "lbl_333".tr),
      ListlevelcounteItemModel(twenty: "lbl_79".tr),
    ];
  }

  List<ListtodayItemModel> fillListtodayItemList() {
    return [
      ListtodayItemModel(today: "lbl_today".tr, thirtytwo: "lbl_322".tr),
      ListtodayItemModel(today: "lbl_yesterday".tr, thirtytwo: "lbl_39".tr),
      ListtodayItemModel(today: "lbl_this_moth".tr, thirtytwo: "lbl_522".tr),
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }
}
