import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list55470397152_item_model.dart';
import 'listmore_one_item_model.dart';

/// This class defines the variables used in the [lottery_exit_page_retain_one_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LotteryExitPageRetainOneModel extends Equatable {
  LotteryExitPageRetainOneModel({
    this.listmoreOneItemList = const [],
    this.list55470397152ItemList = const [],
  });

  List<ListmoreOneItemModel> listmoreOneItemList;

  List<List55470397152ItemModel> list55470397152ItemList;

  LotteryExitPageRetainOneModel copyWith({
    List<ListmoreOneItemModel>? listmoreOneItemList,
    List<List55470397152ItemModel>? list55470397152ItemList,
  }) {
    return LotteryExitPageRetainOneModel(
      listmoreOneItemList: listmoreOneItemList ?? this.listmoreOneItemList,
      list55470397152ItemList:
          list55470397152ItemList ?? this.list55470397152ItemList,
    );
  }

  @override
  List<Object?> get props => [listmoreOneItemList, list55470397152ItemList];
}
