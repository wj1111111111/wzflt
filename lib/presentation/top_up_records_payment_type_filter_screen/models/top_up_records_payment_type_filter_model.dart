import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listgcash_item_model.dart';

/// This class defines the variables used in the [top_up_records_payment_type_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class TopUpRecordsPaymentTypeFilterModel extends Equatable {
  TopUpRecordsPaymentTypeFilterModel({this.listgcashItemList = const []});

  List<ListgcashItemModel> listgcashItemList;

  TopUpRecordsPaymentTypeFilterModel copyWith({
    List<ListgcashItemModel>? listgcashItemList,
  }) {
    return TopUpRecordsPaymentTypeFilterModel(
      listgcashItemList: listgcashItemList ?? this.listgcashItemList,
    );
  }

  @override
  List<Object?> get props => [listgcashItemList];
}
