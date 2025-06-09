import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list123123_item_model.dart';
import 'listwithdrawal_item_model.dart';

/// This class defines the variables used in the [smash_the_golden_egg_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SmashTheGoldenEggModel extends Equatable {
  SmashTheGoldenEggModel({
    this.listwithdrawalItemList = const [],
    this.list123123ItemList = const [],
  });

  List<ListwithdrawalItemModel> listwithdrawalItemList;

  List<List123123ItemModel> list123123ItemList;

  SmashTheGoldenEggModel copyWith({
    List<ListwithdrawalItemModel>? listwithdrawalItemList,
    List<List123123ItemModel>? list123123ItemList,
  }) {
    return SmashTheGoldenEggModel(
      listwithdrawalItemList:
          listwithdrawalItemList ?? this.listwithdrawalItemList,
      list123123ItemList: list123123ItemList ?? this.list123123ItemList,
    );
  }

  @override
  List<Object?> get props => [listwithdrawalItemList, list123123ItemList];
}
