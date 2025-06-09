part of 'transaction_deposit_bloc.dart';

/// Represents the state of TransactionDeposit in the application.

// ignore_for_file: must_be_immutable
class TransactionDepositState extends Equatable {
  TransactionDepositState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.transactionDepositModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  TransactionDepositModel? transactionDepositModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    transactionDepositModelObj,
  ];
  TransactionDepositState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    TransactionDepositModel? transactionDepositModelObj,
  }) {
    return TransactionDepositState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      transactionDepositModelObj:
          transactionDepositModelObj ?? this.transactionDepositModelObj,
    );
  }
}
