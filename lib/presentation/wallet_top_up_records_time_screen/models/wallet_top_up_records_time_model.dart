import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chipviewtoday_item_model.dart';
import 'listgcash_item_model.dart';

/// This class defines the variables used in the [wallet_top_up_records_time_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WalletTopUpRecordsTimeModel extends Equatable {
  WalletTopUpRecordsTimeModel({
    this.listgcashItemList = const [],
    this.chipviewtodayItemList = const [],
  });

  List<ListgcashItemModel> listgcashItemList;

  List<ChipviewtodayItemModel> chipviewtodayItemList;

  WalletTopUpRecordsTimeModel copyWith({
    List<ListgcashItemModel>? listgcashItemList,
    List<ChipviewtodayItemModel>? chipviewtodayItemList,
  }) {
    return WalletTopUpRecordsTimeModel(
      listgcashItemList: listgcashItemList ?? this.listgcashItemList,
      chipviewtodayItemList:
          chipviewtodayItemList ?? this.chipviewtodayItemList,
    );
  }

  @override
  List<Object?> get props => [listgcashItemList, chipviewtodayItemList];
}
