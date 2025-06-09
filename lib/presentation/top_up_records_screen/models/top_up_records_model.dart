import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'topup_records_item_model.dart';

/// This class defines the variables used in the [top_up_records_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class TopUpRecordsModel extends Equatable {
  TopUpRecordsModel({this.topupRecordsItemList = const []});

  List<TopupRecordsItemModel> topupRecordsItemList;

  TopUpRecordsModel copyWith({
    List<TopupRecordsItemModel>? topupRecordsItemList,
  }) {
    return TopUpRecordsModel(
      topupRecordsItemList: topupRecordsItemList ?? this.topupRecordsItemList,
    );
  }

  @override
  List<Object?> get props => [topupRecordsItemList];
}
