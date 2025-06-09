part of 'transaction_deposit_one_bloc.dart';

/// Represents the state of TransactionDepositOne in the application.

// ignore_for_file: must_be_immutable
class TransactionDepositOneState extends Equatable {
  TransactionDepositOneState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.transactionDepositOneModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  TransactionDepositOneModel? transactionDepositOneModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    transactionDepositOneModelObj,
  ];
  TransactionDepositOneState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    TransactionDepositOneModel? transactionDepositOneModelObj,
  }) {
    return TransactionDepositOneState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      transactionDepositOneModelObj:
          transactionDepositOneModelObj ?? this.transactionDepositOneModelObj,
    );
  }
}
