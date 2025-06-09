import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list_item_model.dart';
import 'list_one_item_model.dart';
import 'list_two_item_model.dart';
import 'listjunior_item_model.dart';
import 'listprice_item_model.dart';
import 'listteamslevel_item_model.dart';

/// This class defines the variables used in the [referral_not_logged_in_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ReferralNotLoggedInModel extends Equatable {
  ReferralNotLoggedInModel({
    this.listpriceItemList = const [],
    this.listteamslevelItemList = const [],
    this.listjuniorItemList = const [],
    this.listItemList = const [],
    this.listOneItemList = const [],
    this.listTwoItemList = const [],
  });

  List<ListpriceItemModel> listpriceItemList;

  List<ListteamslevelItemModel> listteamslevelItemList;

  List<ListjuniorItemModel> listjuniorItemList;

  List<ListItemModel> listItemList;

  List<ListOneItemModel> listOneItemList;

  List<ListTwoItemModel> listTwoItemList;

  ReferralNotLoggedInModel copyWith({
    List<ListpriceItemModel>? listpriceItemList,
    List<ListteamslevelItemModel>? listteamslevelItemList,
    List<ListjuniorItemModel>? listjuniorItemList,
    List<ListItemModel>? listItemList,
    List<ListOneItemModel>? listOneItemList,
    List<ListTwoItemModel>? listTwoItemList,
  }) {
    return ReferralNotLoggedInModel(
      listpriceItemList: listpriceItemList ?? this.listpriceItemList,
      listteamslevelItemList:
          listteamslevelItemList ?? this.listteamslevelItemList,
      listjuniorItemList: listjuniorItemList ?? this.listjuniorItemList,
      listItemList: listItemList ?? this.listItemList,
      listOneItemList: listOneItemList ?? this.listOneItemList,
      listTwoItemList: listTwoItemList ?? this.listTwoItemList,
    );
  }

  @override
  List<Object?> get props => [
    listpriceItemList,
    listteamslevelItemList,
    listjuniorItemList,
    listItemList,
    listOneItemList,
    listTwoItemList,
  ];
}
