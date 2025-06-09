import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listbettingreco_item_model.dart';
import '../models/listinvite_one_item_model.dart';
import '../models/personal_center_model.dart';
part 'personal_center_event.dart';
part 'personal_center_state.dart';

/// A bloc that manages the state of a PersonalCenter according to the event that is dispatched to it.
class PersonalCenterBloc
    extends Bloc<PersonalCenterEvent, PersonalCenterState> {
  PersonalCenterBloc(PersonalCenterState initialState) : super(initialState) {
    on<PersonalCenterInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PersonalCenterInitialEvent event,
    Emitter<PersonalCenterState> emit,
  ) async {
    emit(state.copyWith(enterthegiftController: TextEditingController()));
    emit(
      state.copyWith(
        personalCenterModelObj: state.personalCenterModelObj?.copyWith(
          listinviteOneItemList: fillListinviteOneItemList(),
          listbettingrecoItemList: fillListbettingrecoItemList(),
        ),
      ),
    );
  }

  List<ListinviteOneItemModel> fillListinviteOneItemList() {
    return [
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgInvite1,
        inviteTwo: "lbl_invite3".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.img36x36,
        inviteTwo: "lbl_spin".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgGroup120051,
        inviteTwo: "lbl_cashback".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgAdd2e694b509077,
        inviteTwo: "lbl_sign_in".tr,
      ),
    ];
  }

  List<ListbettingrecoItemModel> fillListbettingrecoItemList() {
    return [
      ListbettingrecoItemModel(
        bettingrecord: ImageConstant.imgVector26x26,
        bettingrecord1: "lbl_betting_record".tr,
      ),
      ListbettingrecoItemModel(
        bettingrecord: ImageConstant.imgVector26x20,
        bettingrecord1: "lbl_account_record".tr,
      ),
      ListbettingrecoItemModel(
        bettingrecord: ImageConstant.imgVector24x26,
        bettingrecord1: "lbl_deposit_record".tr,
      ),
      ListbettingrecoItemModel(
        bettingrecord: ImageConstant.imgVector26x24,
        bettingrecord1: "msg_withdrawal_record".tr,
      ),
    ];
  }
}
