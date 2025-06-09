import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listfour_one_item_model.dart';
import 'listlv1_one_item_model.dart';
import 'listvip_one_item_model.dart';

/// This class defines the variables used in the [level_bonus_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LevelBonusModel extends Equatable {
  LevelBonusModel({
    this.listvipOneItemList = const [],
    this.listfourOneItemList = const [],
    this.listlv1OneItemList = const [],
  });

  List<ListvipOneItemModel> listvipOneItemList;

  List<ListfourOneItemModel> listfourOneItemList;

  List<Listlv1OneItemModel> listlv1OneItemList;

  LevelBonusModel copyWith({
    List<ListvipOneItemModel>? listvipOneItemList,
    List<ListfourOneItemModel>? listfourOneItemList,
    List<Listlv1OneItemModel>? listlv1OneItemList,
  }) {
    return LevelBonusModel(
      listvipOneItemList: listvipOneItemList ?? this.listvipOneItemList,
      listfourOneItemList: listfourOneItemList ?? this.listfourOneItemList,
      listlv1OneItemList: listlv1OneItemList ?? this.listlv1OneItemList,
    );
  }

  @override
  List<Object?> get props => [
    listvipOneItemList,
    listfourOneItemList,
    listlv1OneItemList,
  ];
}
