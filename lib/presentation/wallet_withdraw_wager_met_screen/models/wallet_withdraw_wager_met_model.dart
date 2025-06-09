import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listpixmobile_item_model.dart';

/// This class defines the variables used in the [wallet_withdraw_wager_met_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WalletWithdrawWagerMetModel extends Equatable {
  WalletWithdrawWagerMetModel({this.listpixmobileItemList = const []});

  List<ListpixmobileItemModel> listpixmobileItemList;

  WalletWithdrawWagerMetModel copyWith({
    List<ListpixmobileItemModel>? listpixmobileItemList,
  }) {
    return WalletWithdrawWagerMetModel(
      listpixmobileItemList:
          listpixmobileItemList ?? this.listpixmobileItemList,
    );
  }

  @override
  List<Object?> get props => [listpixmobileItemList];
}
