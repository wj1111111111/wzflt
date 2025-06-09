import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridregistratio_item_model.dart';
import 'list1306520_item_model.dart';
import 'listjunioragent_item_model.dart';
import 'listone_item_model.dart';
import 'listregistratio_item_model.dart';
import 'slidermyagentti_item_model.dart';

/// This class defines the variables used in the [referral_logged_in_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ReferralLoggedInModel extends Equatable {
  ReferralLoggedInModel({
    this.slidermyagenttiItemList = const [],
    this.gridregistratioItemList = const [],
    this.listoneItemList = const [],
    this.listjunioragentItemList = const [],
    this.listregistratioItemList = const [],
    this.list1306520ItemList = const [],
  });

  List<SlidermyagenttiItemModel> slidermyagenttiItemList;

  List<GridregistratioItemModel> gridregistratioItemList;

  List<ListoneItemModel> listoneItemList;

  List<ListjunioragentItemModel> listjunioragentItemList;

  List<ListregistratioItemModel> listregistratioItemList;

  List<List1306520ItemModel> list1306520ItemList;

  ReferralLoggedInModel copyWith({
    List<SlidermyagenttiItemModel>? slidermyagenttiItemList,
    List<GridregistratioItemModel>? gridregistratioItemList,
    List<ListoneItemModel>? listoneItemList,
    List<ListjunioragentItemModel>? listjunioragentItemList,
    List<ListregistratioItemModel>? listregistratioItemList,
    List<List1306520ItemModel>? list1306520ItemList,
  }) {
    return ReferralLoggedInModel(
      slidermyagenttiItemList:
          slidermyagenttiItemList ?? this.slidermyagenttiItemList,
      gridregistratioItemList:
          gridregistratioItemList ?? this.gridregistratioItemList,
      listoneItemList: listoneItemList ?? this.listoneItemList,
      listjunioragentItemList:
          listjunioragentItemList ?? this.listjunioragentItemList,
      listregistratioItemList:
          listregistratioItemList ?? this.listregistratioItemList,
      list1306520ItemList: list1306520ItemList ?? this.list1306520ItemList,
    );
  }

  @override
  List<Object?> get props => [
    slidermyagenttiItemList,
    gridregistratioItemList,
    listoneItemList,
    listjunioragentItemList,
    listregistratioItemList,
    list1306520ItemList,
  ];
}
