import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelistc_item_model.dart';
import 'listgroup1248_item_model.dart';
import 'listlv1_one_item_model.dart';
import 'listlv6_one_item_model.dart';

/// This class defines the variables used in the [vip_daily_wage_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class VipDailyWageModel extends Equatable {
  VipDailyWageModel({
    this.listgroup1248ItemList = const [],
    this.expandablelistcItemList = const [],
    this.listlv1OneItemList = const [],
    this.listlv6OneItemList = const [],
  });

  List<Listgroup1248ItemModel> listgroup1248ItemList;

  List<ExpandablelistcItemModel> expandablelistcItemList;

  List<Listlv1OneItemModel> listlv1OneItemList;

  List<Listlv6OneItemModel> listlv6OneItemList;

  VipDailyWageModel copyWith({
    List<Listgroup1248ItemModel>? listgroup1248ItemList,
    List<ExpandablelistcItemModel>? expandablelistcItemList,
    List<Listlv1OneItemModel>? listlv1OneItemList,
    List<Listlv6OneItemModel>? listlv6OneItemList,
  }) {
    return VipDailyWageModel(
      listgroup1248ItemList:
          listgroup1248ItemList ?? this.listgroup1248ItemList,
      expandablelistcItemList:
          expandablelistcItemList ?? this.expandablelistcItemList,
      listlv1OneItemList: listlv1OneItemList ?? this.listlv1OneItemList,
      listlv6OneItemList: listlv6OneItemList ?? this.listlv6OneItemList,
    );
  }

  @override
  List<Object?> get props => [
    listgroup1248ItemList,
    expandablelistcItemList,
    listlv1OneItemList,
    listlv6OneItemList,
  ];
}
