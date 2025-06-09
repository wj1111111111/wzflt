import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/listdeposits_item_model.dart';
import '../models/transaction_deposit_one_model.dart';
part 'transaction_deposit_one_event.dart';
part 'transaction_deposit_one_state.dart';

/// A bloc that manages the state of a TransactionDepositOne according to the event that is dispatched to it.
class TransactionDepositOneBloc
    extends Bloc<TransactionDepositOneEvent, TransactionDepositOneState> {
  TransactionDepositOneBloc(TransactionDepositOneState initialState)
    : super(initialState) {
    on<TransactionDepositOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionDepositOneInitialEvent event,
    Emitter<TransactionDepositOneState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        transactionDepositOneModelObj: state.transactionDepositOneModelObj
            ?.copyWith(
              dropdownItemList: fillDropdownItemList(),
              listdepositsItemList: fillListdepositsItemList(),
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

  List<ListdepositsItemModel> fillListdepositsItemList() {
    return [
      ListdepositsItemModel(
        depositsTwo: "lbl_deposits2".tr,
        six: "msg_21_33_2023_06_08".tr,
        zero: "lbl_100_005".tr,
        zeroOne: "lbl_100_006".tr,
        tf: "lbl2".tr,
      ),
      ListdepositsItemModel(
        depositsTwo: "lbl_deposits2".tr,
        six: "msg_21_33_2023_06_08".tr,
        zero: "lbl_300_004".tr,
        zeroOne: "lbl_100_006".tr,
        tf: "lbl2".tr,
      ),
      ListdepositsItemModel(
        depositsTwo: "lbl_deposits2".tr,
        six: "msg_21_33_2023_06_08".tr,
        zero: "lbl_50_004".tr,
        zeroOne: "lbl_100_006".tr,
        tf: "lbl2".tr,
      ),
      ListdepositsItemModel(
        depositsTwo: "lbl_deposits2".tr,
        six: "msg_21_33_2023_06_08".tr,
        zero: "lbl_300_004".tr,
        zeroOne: "lbl_100_006".tr,
        tf: "lbl2".tr,
      ),
    ];
  }
}
