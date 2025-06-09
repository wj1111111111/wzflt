import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listgcash_item_model.dart';

/// This class defines the variables used in the [withdrawal_records_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WithdrawalRecordsModel extends Equatable {
  WithdrawalRecordsModel({this.listgcashItemList = const []});

  List<ListgcashItemModel> listgcashItemList;

  WithdrawalRecordsModel copyWith({
    List<ListgcashItemModel>? listgcashItemList,
  }) {
    return WithdrawalRecordsModel(
      listgcashItemList: listgcashItemList ?? this.listgcashItemList,
    );
  }

  @override
  List<Object?> get props => [listgcashItemList];
}
