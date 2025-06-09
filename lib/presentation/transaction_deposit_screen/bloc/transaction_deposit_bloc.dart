import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/listrecharge_item_model.dart';
import '../models/transaction_deposit_model.dart';
part 'transaction_deposit_event.dart';
part 'transaction_deposit_state.dart';

/// A bloc that manages the state of a TransactionDeposit according to the event that is dispatched to it.
class TransactionDepositBloc
    extends Bloc<TransactionDepositEvent, TransactionDepositState> {
  TransactionDepositBloc(TransactionDepositState initialState)
    : super(initialState) {
    on<TransactionDepositInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionDepositInitialEvent event,
    Emitter<TransactionDepositState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        transactionDepositModelObj: state.transactionDepositModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          listrechargeItemList: fillListrechargeItemList(),
        ),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }

  List<ListrechargeItemModel> fillListrechargeItemList() {
    return [
      ListrechargeItemModel(
        recharge: "msg_recharge_successful".tr,
        six: "msg_21_33_2023_06_08".tr,
        zero: "lbl_100_004".tr,
        balance100zero: "lbl_balance_100_00".tr,
        tf: "lbl2".tr,
      ),
      ListrechargeItemModel(
        recharge: "msg_recharge_successful".tr,
        six: "msg_21_33_2023_06_08".tr,
        zero: "lbl_300_003".tr,
        balance100zero: "lbl_balance_100_00".tr,
        tf: "lbl2".tr,
      ),
      ListrechargeItemModel(
        recharge: "msg_recharge_successful".tr,
        six: "msg_21_33_2023_06_08".tr,
        zero: "lbl_50_003".tr,
        balance100zero: "lbl_balance_100_00".tr,
        tf: "lbl2".tr,
      ),
      ListrechargeItemModel(
        recharge: "msg_recharge_successful".tr,
        six: "msg_21_33_2023_06_08".tr,
        zero: "lbl_300_003".tr,
        balance100zero: "lbl_balance_100_00".tr,
        tf: "lbl2".tr,
      ),
    ];
  }
}
