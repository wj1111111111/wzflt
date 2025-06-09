import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listgroup1248_item_model.dart';
import 'listlv1_one_item_model.dart';

/// This class defines the variables used in the [vip_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class VipModel extends Equatable {
  VipModel({
    this.listgroup1248ItemList = const [],
    this.listlv1OneItemList = const [],
  });

  List<Listgroup1248ItemModel> listgroup1248ItemList;

  List<Listlv1OneItemModel> listlv1OneItemList;

  VipModel copyWith({
    List<Listgroup1248ItemModel>? listgroup1248ItemList,
    List<Listlv1OneItemModel>? listlv1OneItemList,
  }) {
    return VipModel(
      listgroup1248ItemList:
          listgroup1248ItemList ?? this.listgroup1248ItemList,
      listlv1OneItemList: listlv1OneItemList ?? this.listlv1OneItemList,
    );
  }

  @override
  List<Object?> get props => [listgroup1248ItemList, listlv1OneItemList];
}
