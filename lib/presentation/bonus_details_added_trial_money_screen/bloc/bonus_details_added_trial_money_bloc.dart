import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/bonus_details_added_trial_money_model.dart';
import '../models/listdeposit_item_model.dart';
part 'bonus_details_added_trial_money_event.dart';
part 'bonus_details_added_trial_money_state.dart';

/// A bloc that manages the state of a BonusDetailsAddedTrialMoney according to the event that is dispatched to it.
class BonusDetailsAddedTrialMoneyBloc
    extends
        Bloc<
          BonusDetailsAddedTrialMoneyEvent,
          BonusDetailsAddedTrialMoneyState
        > {
  BonusDetailsAddedTrialMoneyBloc(BonusDetailsAddedTrialMoneyState initialState)
    : super(initialState) {
    on<BonusDetailsAddedTrialMoneyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BonusDetailsAddedTrialMoneyInitialEvent event,
    Emitter<BonusDetailsAddedTrialMoneyState> emit,
  ) async {
    emit(
      state.copyWith(
        bonusDetailsAddedTrialMoneyModelObj: state
            .bonusDetailsAddedTrialMoneyModelObj
            ?.copyWith(listdepositItemList: fillListdepositItemList()),
      ),
    );
  }

  List<ListdepositItemModel> fillListdepositItemList() {
    return [
      ListdepositItemModel(
        depositBonus: ImageConstant.imgVector24x26,
        depositbonus1: "lbl_deposit_bonus".tr,
        price: "lbl_total_399_80".tr,
        firstdeposit: "lbl_first_deposit".tr,
        thirty: "lbl_303".tr,
        seconddeposit: "lbl_second_deposit".tr,
        thirtyOne: "lbl_303".tr,
        firstdaily: "msg_first_daily_deposit".tr,
        thirtyTwo: "lbl_303".tr,
        fixedpayment: "msg_fixed_payment_method".tr,
        thirtyThree: "lbl_303".tr,
      ),
      ListdepositItemModel(
        depositBonus: ImageConstant.imgClose20x34,
        depositbonus1: "lbl_vip_bouns".tr,
        price: "msg_total_19999_80".tr,
        firstdeposit: "lbl_upgrade_bonus3".tr,
        thirty: "lbl_19777_80".tr,
        seconddeposit: "lbl_weekly_cashback2".tr,
        thirtyOne: "lbl_7799_80".tr,
        firstdaily: "lbl_weekly_salary3".tr,
        thirtyTwo: "lbl_3399_80".tr,
        fixedpayment: "lbl_monthly_salary4".tr,
        thirtyThree: "lbl_19999_80".tr,
      ),
      ListdepositItemModel(
        firstdeposit: "lbl_red_package".tr,
        thirty: "lbl_19777_80".tr,
        seconddeposit: "lbl_cash_voucher".tr,
        thirtyOne: "lbl_7799_80".tr,
        firstdaily: "lbl_lucky_wheel".tr,
        thirtyTwo: "lbl_3399_80".tr,
        fixedpayment: "lbl_golden_egg".tr,
        thirtyThree: "lbl_19999_80".tr,
      ),
      ListdepositItemModel(),
      ListdepositItemModel(),
      ListdepositItemModel(),
      ListdepositItemModel(),
      ListdepositItemModel(),
      ListdepositItemModel(),
    ];
  }
}
