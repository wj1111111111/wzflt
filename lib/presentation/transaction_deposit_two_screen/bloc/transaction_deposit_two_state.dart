part of 'transaction_deposit_two_bloc.dart';

/// Represents the state of TransactionDepositTwo in the application.

// ignore_for_file: must_be_immutable
class TransactionDepositTwoState extends Equatable {
  TransactionDepositTwoState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.transactionDepositTwoModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  TransactionDepositTwoModel? transactionDepositTwoModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    transactionDepositTwoModelObj,
  ];
  TransactionDepositTwoState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    TransactionDepositTwoModel? transactionDepositTwoModelObj,
  }) {
    return TransactionDepositTwoState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      transactionDepositTwoModelObj:
          transactionDepositTwoModelObj ?? this.transactionDepositTwoModelObj,
    );
  }
}
