import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'listrecharge_item_model.dart';

/// This class defines the variables used in the [transaction_deposit_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class TransactionDepositModel extends Equatable {
  TransactionDepositModel({
    this.dropdownItemList = const [],
    this.listrechargeItemList = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<ListrechargeItemModel> listrechargeItemList;

  TransactionDepositModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ListrechargeItemModel>? listrechargeItemList,
  }) {
    return TransactionDepositModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listrechargeItemList: listrechargeItemList ?? this.listrechargeItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, listrechargeItemList];
}
