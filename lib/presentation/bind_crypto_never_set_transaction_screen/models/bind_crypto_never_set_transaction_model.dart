import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [bind_crypto_never_set_transaction_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class BindCryptoNeverSetTransactionModel extends Equatable {
  BindCryptoNeverSetTransactionModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  BindCryptoNeverSetTransactionModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
  }) {
    return BindCryptoNeverSetTransactionModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
