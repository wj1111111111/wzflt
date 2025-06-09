import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/transaction_deposit_two_model.dart';
part 'transaction_deposit_two_event.dart';
part 'transaction_deposit_two_state.dart';

/// A bloc that manages the state of a TransactionDepositTwo according to the event that is dispatched to it.
class TransactionDepositTwoBloc
    extends Bloc<TransactionDepositTwoEvent, TransactionDepositTwoState> {
  TransactionDepositTwoBloc(TransactionDepositTwoState initialState)
    : super(initialState) {
    on<TransactionDepositTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionDepositTwoInitialEvent event,
    Emitter<TransactionDepositTwoState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        transactionDepositTwoModelObj: state.transactionDepositTwoModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList()),
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
}
