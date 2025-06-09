import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listgcash_item_model.dart';

/// This class defines the variables used in the [wallet_top_up_records_payment_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WalletTopUpRecordsPaymentModel extends Equatable {
  WalletTopUpRecordsPaymentModel({this.listgcashItemList = const []});

  List<ListgcashItemModel> listgcashItemList;

  WalletTopUpRecordsPaymentModel copyWith({
    List<ListgcashItemModel>? listgcashItemList,
  }) {
    return WalletTopUpRecordsPaymentModel(
      listgcashItemList: listgcashItemList ?? this.listgcashItemList,
    );
  }

  @override
  List<Object?> get props => [listgcashItemList];
}
