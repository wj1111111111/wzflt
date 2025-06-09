import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridgcash_one_item_model.dart';

/// This class defines the variables used in the [wallet_choose_amount_style_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WalletChooseAmountStyleModel extends Equatable {
  WalletChooseAmountStyleModel({this.gridgcashOneItemList = const []});

  List<GridgcashOneItemModel> gridgcashOneItemList;

  WalletChooseAmountStyleModel copyWith({
    List<GridgcashOneItemModel>? gridgcashOneItemList,
  }) {
    return WalletChooseAmountStyleModel(
      gridgcashOneItemList: gridgcashOneItemList ?? this.gridgcashOneItemList,
    );
  }

  @override
  List<Object?> get props => [gridgcashOneItemList];
}
