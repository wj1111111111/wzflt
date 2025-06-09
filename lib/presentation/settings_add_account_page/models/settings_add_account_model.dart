import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listaccount_item_model.dart';

/// This class defines the variables used in the [settings_add_account_page],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SettingsAddAccountModel extends Equatable {
  SettingsAddAccountModel({this.listaccountItemList = const []});

  List<ListaccountItemModel> listaccountItemList;

  SettingsAddAccountModel copyWith({
    List<ListaccountItemModel>? listaccountItemList,
  }) {
    return SettingsAddAccountModel(
      listaccountItemList: listaccountItemList ?? this.listaccountItemList,
    );
  }

  @override
  List<Object?> get props => [listaccountItemList];
}
