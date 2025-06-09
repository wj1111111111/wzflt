import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'listdeposits_item_model.dart';

/// This class defines the variables used in the [transaction_deposit_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class TransactionDepositOneModel extends Equatable {
  TransactionDepositOneModel({
    this.dropdownItemList = const [],
    this.listdepositsItemList = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<ListdepositsItemModel> listdepositsItemList;

  TransactionDepositOneModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ListdepositsItemModel>? listdepositsItemList,
  }) {
    return TransactionDepositOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listdepositsItemList: listdepositsItemList ?? this.listdepositsItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, listdepositsItemList];
}
