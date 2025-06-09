import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list102x1000_item_model.dart';
import 'listcollect_one_item_model.dart';
import 'listdeposit_item_model.dart';

/// This class is used in the [top_up_promo_popup_initial_page] screen.

// ignore_for_file: must_be_immutable
class TopUpPromoPopupInitialModel extends Equatable {
  TopUpPromoPopupInitialModel({
    this.listcollectOneItemList = const [],
    this.list102x1000ItemList = const [],
    this.listdepositItemList = const [],
  });

  List<ListcollectOneItemModel> listcollectOneItemList;

  List<List102x1000ItemModel> list102x1000ItemList;

  List<ListdepositItemModel> listdepositItemList;

  TopUpPromoPopupInitialModel copyWith({
    List<ListcollectOneItemModel>? listcollectOneItemList,
    List<List102x1000ItemModel>? list102x1000ItemList,
    List<ListdepositItemModel>? listdepositItemList,
  }) {
    return TopUpPromoPopupInitialModel(
      listcollectOneItemList:
          listcollectOneItemList ?? this.listcollectOneItemList,
      list102x1000ItemList: list102x1000ItemList ?? this.list102x1000ItemList,
      listdepositItemList: listdepositItemList ?? this.listdepositItemList,
    );
  }

  @override
  List<Object?> get props => [
    listcollectOneItemList,
    list102x1000ItemList,
    listdepositItemList,
  ];
}
