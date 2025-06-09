import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [transaction_deposit_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class TransactionDepositTwoModel extends Equatable {
  TransactionDepositTwoModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  TransactionDepositTwoModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
  }) {
    return TransactionDepositTwoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
